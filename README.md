# http_server

## Overview

`http_server` is a simple HTTP server implementation written in C. It includes basic functionalities to handle HTTP requests and responses, manage network connections, and serve static HTML pages.

## Project Structure

The project is organized into the following directories and files:
```tree
http_server/
├── extclib/
│ ├── http.h
│ ├── http.c
│ ├── type.h
│ ├── type.c
│ ├── tree.h
│ ├── tree.c
│ ├── net.h
│ ├── net.c
│ ├── hashtab.h
│ ├── hashtab.c
│ └── Makefile
├── about.html
├── index.html
├── page404.html
├── main.c
├── server.c
├── client.c
├── Makefile
└── README.md
```

### Key Components

#### `extclib/`

- **http.h** and **http.c**: Contains functions and structures for handling HTTP requests and responses.
  - Functions: `free_http`, `handle_http`, `listen_http`, `parsehtml_http`, `_new_request`, `_parse_request`, `_null_request`, `_switch_http`, `_page404_http`
  - Structures: `HTTPreq`, `HTTP`

- **type.h** and **type.c**: Defines and implements various data types used in the project.
  - Structures: `vtype_t`

- **tree.h** and **tree.c**: Implements a tree data structure for managing hierarchical data.
  - Functions: `free_tree`, `in_tree`, `get_tree`, `set_tree`, `del_tree`, `eq_tree`, `size_tree`, `sizeof_tree`, `print_tree`, `println_tree`, `print_tree_branches`, `println_tree_branches`

- **net.h** and **net.c**: Manages network connections and data transmission.
  - Functions: `listen_net`, `accept_net`, `connect_net`, `close_net`, `send_net`, `recv_net`

- **hashtab.h** and **hashtab.c**: Implements a hash table for efficient data storage and retrieval.
  - Functions: `del_hashtab`, `in_hashtab`, `get_hashtab`, `set_hashtab`, `eq_hashtab`, `size_hashtab`, `sizeof_hashtab`, `free_hashtab`, `print_hashtab`, `println_hashtab`

#### Root Directory

- **main.c**: Contains the main entry point of the HTTP server and functions to handle different pages.
  - Functions: `main`, `index_page`, `about_page`

- **server.c**: Contains the main entry point for the server-side application.
  - Functions: `main`

- **client.c**: Contains the main entry point for the client-side application and input/output handling.
  - Functions: `main`, `inputs_io`

- **about.html**: Static HTML page for the "About" section.
- **index.html**: Static HTML page for the index (home) page.
- **page404.html**: Static HTML page for handling 404 errors.

## Building and Running

### Prerequisites

- A C compiler (e.g., `gcc`)
- `make` utility

### Build

To build the project, navigate to the `extclib` directory and run:

```sh
make
```

then navigate to the root directory and run:

```sh
gcc main.c extclib/extclib.o -o main -lws2_32
```


### Run (TCP testing)

To start the server, execute the following command:

```sh
./server
```

To run the client, execute the following command:

```sh
./client
```

### Run (HTTP Server)

To start the HTTP server, execute the following command:

```sh
./main
```

### Acknowledgements

This project is part of the Computer Organization and Systems course at Harbour.Space University.