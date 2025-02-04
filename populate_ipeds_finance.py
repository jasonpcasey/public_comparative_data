from netfile.fasb_file import FasbFinanceFile
from netfile.gasb_file import GasbFinanceFile

import argparse

from database.ipeds_finance import IpedsFinance

# get command line arguments
parser = argparse.ArgumentParser(description='Transfers IPEDS Finance for specified years to database.')
parser.add_argument("--first", default=2002, type=int, help="First year of sequence.")
parser.add_argument("--last", default=2018, type=int, help="Last year of sequence.")
args = parser.parse_args()

def main():
    for year in range(args.first, args.last + 1):
        _file = FasbFinanceFile(year)
        print(f'{_file.row_count():,} rows were extracted for {_file.year}.')
        _file.write()
        _file = GasbFinanceFile(year)
        print(f'{_file.row_count():,} rows were extracted for {_file.year}.')
        _file.write()
        print('\n')

    print('All done.')

if __name__ == '__main__':
    main()