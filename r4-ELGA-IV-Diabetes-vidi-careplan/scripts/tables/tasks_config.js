export const i_tasks_config = {
  layout: "fitDataStretch",
  responsiveLayout: "collapse",
  rowHeader: {
    formatter: "responsiveCollapse",
    hozAlign: "center",
    resizable: false,
    headerSort: false,
    cssClass: "wrap-text",
  },
  responsiveLayoutCollapseStartOpen: false,
  langs:{
  "lang-en":{ //German default
    "columns":{
        "code":"Code", 
        "authoredOn": "Creationdate", 
        "beschreibung": "Description",
      },
    },
  },
  columns: [
    {
      title: "",
      field: "marked",
      width: 55,
      minWidth: 55,
      hozAlign: "center",
      formatter: function (cell) {
        const data = cell.getRow().getData();
        const symbol = data.marked === 1 ? '⚠️' : data.marked === 2 ? '?' : '▢';
        return `
          <span class="status-icon" style="cursor:pointer;">${symbol}</span>
        `;
      },
      cellClick: function (e, cell) {
        const rowData = cell.getRow().getData();

        if (rowData.marked === undefined) {
          rowData.marked = 0;
        }
        rowData.marked = (rowData.marked + 1) % 3;
        cell.getRow().update(rowData);
      },
      responsive: 0,
    },
    {
      title: "Status",
      field: "status",
      responsive: 0,
      width: 150,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Zweck",
      field: "intent",
      responsive: 0,
      width: 150,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Code",
      field: "code",
      responsive: 0,
      width: 220,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Beschreibung",
      field: "beschreibung",
      responsive: 2,
      width: 340,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Verordnet am",
      field: "authoredOn",
      responsive: 1,
      width: 190,
      minWidth: 150,
      cssClass: "wrap-text",
      formatter: function (cell) {
        const row_data = cell.getRow().getData();
        const erstellt = row_data?.authoredOn;
        const date = new Date(erstellt);
        const formatted = date.toLocaleString('de-AT', { day: '2-digit', month: '2-digit', year: 'numeric' }) ;

        return formatted;
      },
    },
    {
      title: "Anforderer",
      field: "requester",
      responsive: 2,
      width: 150,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Fachrichtung",
      field: "performerType",
      responsive: 2,
      width: 150,
      minWidth: 150,
      cssClass: "wrap-text",
    },
  ],
};

export const v_tasks_config = {
  layout: "fitDataStretch",
  responsiveLayout: "collapse",
  rowHeader: {
    formatter: "responsiveCollapse",
    hozAlign: "center",
    resizable: false,
    headerSort: false,
    cssClass: "wrap-text",
  },
  responsiveLayoutCollapseStartOpen: false,
  langs:{
  "lang-en":{ //German default
    "columns":{
        "code":"Code", 
        "authoredOn": "Creationdate", 
        "beschreibung": "Description",
      },
    },
  },
  columns: [
    {
      title: "Code",
      field: "code",
      responsive: 0,
      width: 220,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Beschreibung",
      field: "beschreibung",
      responsive: 2,
      width: 150,
      minWidth: 150,
      cssClass: "wrap-text",
    },
    {
      title: "Verordnet am",
      field: "authoredOn",
      responsive: 1,
      width: 150,
      minWidth: 150,
      cssClass: "wrap-text",
      formatter: function (cell) {
        const row_data = cell.getRow().getData();
        const erstellt = row_data?.authoredOn;
        const date = new Date(erstellt);
        const formatted = date.toLocaleString('de-AT', { day: '2-digit', month: '2-digit', year: 'numeric' }) ;

        return formatted;
      },
    },
  ],
};
