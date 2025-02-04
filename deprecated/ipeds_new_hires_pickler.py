# coding=utf-8

import pickle
import pandas as pd
import numpy as np
from user_functions import net_load_data
import pathlib

first_year = 2012
last_year = 2018

# file_spec = np.where(year < 2014, "ic{}.zip".format(year), "adm{}.zip".format(year))
# url = "https://nces.ed.gov/ipeds/datacenter/data/{}".format(file_spec)

def ipeds_pickle(url, filespec, dtypes = 'object'):
    """ download ipeds data file at url and dump to pickle at filespec
        setting column name to lower and dropping imputation fields """
    print('\tReading {}...'.format(url), end='', flush=True)
    df = net_load_data(url, types = dtypes)
    df.columns = df.columns.str.strip().str.lower()
    keepers = [col for col in df if not col.startswith('x')]
    df = df[keepers]

    with open(filespec, 'wb') as f:
        pickle.dump(df, f, pickle.HIGHEST_PROTOCOL)
    
    print('DONE.\n')

for year in range(first_year, last_year + 1):
    print('Downloading data for {}:'.format(year))
    spec = 'https://nces.ed.gov/ipeds/datacenter/data/s{}_nh.zip'.format(year)

    try:
        # read hd
        ipeds_pickle(spec,
                     pathlib.Path.cwd() / 'data/ipeds_new_hires_{}.pickle'.format(year),
                     dtypes = {'UNITID': np.int32,
                               'OCCUPCAT': np.int32,
                               'FACSTAT': np.int32,
                               'SNHCAT': np.int32,
                               'SGTYPE': np.int32,
                               'HRNRALM': np.float32,
                               'HRNRALW': np.float32,
                               'HRUNKNM': np.float32,
                               'HRUNKNW': np.float32,
                               'HRHISPM': np.float32,
                               'HRHISPW': np.float32,
                               'HRAIANM': np.float32,
                               'HRAIAMW': np.float32,
                               'HRASIAM': np.float32,
                               'HRASIAW': np.float32,
                               'HRBKAAM': np.float32,
                               'HRBKAAW': np.float32,
                               'HRNHPIM': np.float32,
                               'HRNHPIW': np.float32,
                               'HRWHITM': np.float32,
                               'HRWHITW': np.float32,
                               'HR2MORM': np.float32,
                               'HR2MORW': np.float32})

    except Exception as e:
        print('ERROR.\nFile not downloaded properly.\n\n{}\n'.format(str(e)))
        break

print('All Done!')
