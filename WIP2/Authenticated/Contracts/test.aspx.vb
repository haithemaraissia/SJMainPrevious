﻿Imports Microsoft.Reporting.WebForms

Partial Class CleanSIDEJOB2008_Authenticated_Contracts_test
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim CustomerContractAdapter As New ContractDataSetTableAdapters.ContractTableAdapter
        Dim CustomerContractTable As New ContractDataSet.ContractDataTable
        CustomerContractAdapter.FillContract(CustomerContractTable, 3)

        Dim CustomerReportDataSource As New ReportDataSource()
        CustomerReportDataSource.Name = "ContractDataSet"
        CustomerReportDataSource.Value = CustomerContractTable


        Dim CustomerContractDescriptionAdapter As New ContractDataSetTableAdapters.ContractDescriptionTableAdapter
        Dim CustomerContractDescriptionTable As New ContractDataSet.ContractDescriptionDataTable
        CustomerContractDescriptionAdapter.FillContractDescription(CustomerContractDescriptionTable, 1)

        Dim CustomerDescriptionReportDataSource As New ReportDataSource()
        CustomerDescriptionReportDataSource.Name = "ContractDescriptionDataSet"
        CustomerDescriptionReportDataSource.Value = CustomerContractDescriptionTable


        ReportViewer1.LocalReport.DataSources.Clear()
        'ReportViewer1.LocalReport.DataSources.Add(CG);


        ReportViewer1.LocalReport.DataSources.Add(CustomerReportDataSource)
        ReportViewer1.LocalReport.DataSources.Add(CustomerDescriptionReportDataSource)
        ReportViewer1.LocalReport.Refresh()

        ReportViewer1.LocalReport.ReportEmbeddedResource = "Report.rdlc"
        ''Export to PDF
        Dim mimeType As String
        Dim encoding As String
        Dim fileNameExtension As String
        Dim streams As String()
        Dim warnings As Warning()

        Dim pdfContent As Byte() = ReportViewer1.LocalReport.Render("PDF", Nothing, mimeType, encoding, fileNameExtension, streams, _
         warnings)

        'Return PDF
        Response.Clear()
        Response.ContentType = "application/pdf"


        Response.AddHeader("Content-disposition", "attachment; filename=Contract.pdf")
        Response.BinaryWrite(pdfContent)
        Response.[End]()

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'ReportViewer1.Reset()
        ReportViewer1.LocalReport.DataSources.Clear()
        Dim CustomerDataSet ' As New System.Data.DataSet()


        '   Dim contractDataSet As New  ContractDataSetTableAdapters.

    End Sub
End Class
