import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../const/data_dummy.dart';
import '../../../models/product.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    final productDataSource = ProductDataSource(products);

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer
      ),
      child: Container(
        height: 330,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: SfDataGrid(
          columnWidthMode: ColumnWidthMode.auto,
        //  allowFiltering: true,
        allowFiltering: true,
        headerGridLinesVisibility: GridLinesVisibility.none,
          gridLinesVisibility: GridLinesVisibility.none,
          allowSorting: true,
        source: productDataSource, columns: [
          GridColumn(
            allowFiltering: false,
            columnName: "id", label: const Text("ID")),
          GridColumn(
            allowFiltering: false,
            columnName: "name", label: const Text("NAME")),
          GridColumn(
            allowFiltering: false,
            columnName: "sellPrice", label: const Text("S PRICE")),
          GridColumn(
            allowFiltering: true,
            allowSorting: false,
            columnName: "isActive", label: const Text("ACTIVE")),
          GridColumn(
            allowSorting: true,
            allowFiltering: false,
            columnName: "stock", label: const Text("STOCK")),
          GridColumn(
            allowSorting: false,
            allowFiltering: true,
            columnName: "supplier", label: const Text("SUPPLIER")),
          GridColumn(
            allowSorting: false,
            allowFiltering: true,
            columnName: "unit", label: const Text("UNIT")),
          GridColumn(
            allowSorting: false,
            allowFiltering: false,
            width: 120, columnName: "purchasePrice", label: const Text("P PRICE")),
          GridColumn(
            allowSorting: false,
            allowFiltering: false,
            width: 150,
            columnName: "tags", label: const Text("TAGS")),
          GridColumn(
            allowSorting: false,
            allowFiltering: false,
            columnName: "action", label: const Text("ACTION")),
        ]),
      ),
    );
  }
}



// note this class from table package
// created specially for table row and columns cells

class ProductDataSource extends DataGridSource {

  /// DataGridRow is list type from table package
  late List<DataGridRow> dataGridRows;
  
  ProductDataSource(List<Product> products){
    dataGridRows = products.map((product) => 
    
    DataGridRow(cells: [        // ek row

      DataGridCell(columnName: "id", value: product.id),
      DataGridCell(columnName: "name", value: product.name),
      DataGridCell(columnName: "sellPrice", value: product.sellPrice),
      DataGridCell(columnName: "isActive", value: product.isActive),
      DataGridCell(columnName: "stock", value: product.stock),
      DataGridCell(columnName: "supplier", value: product.supplier),
      DataGridCell(columnName: "unit", value: product.unit),
      DataGridCell(columnName: "purchasePrice", value: product.purchasePrice),
      DataGridCell(columnName: "tags", value: product.tags),
      DataGridCell(columnName: "action", value: product.tags),
     
    ])
    ).toList();
  }           /// constructor


  @override
   List<DataGridRow> get rows => dataGridRows;
   
     @override
     DataGridRowAdapter? buildRow(DataGridRow row) {
  
     
     return DataGridRowAdapter(cells: 
     row.getCells().map((cell) {

      if(cell.columnName== "action"){
        return Row(
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Edit"))
          ],
        );
      } else 
      {
         return Text(cell.value.toString(),
         textAlign: TextAlign.center,
         );
      }
       
     },).toList()
     );
     }

}