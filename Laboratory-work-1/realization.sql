CREATE TABLE divers
(
    id_diver   serial,
    name       varchar(32)   NOT NULL,
    surname    varchar(32)   NOT NULL,
    patronymic varchar(32)   NOT NULL,
    contacts   varchar(20)   NOT NULL,
    salary     decimal(8, 2) NOT NULL CHECK (salary > 0),
    PRIMARY KEY (id_diver)
);

CREATE TABLE positions
(
    id_position serial,
    name        text NOT NULL,
    PRIMARY KEY (id_position)
);

CREATE TABLE div_position
(
    id_position integer,
    id_diver    integer,
    FOREIGN KEY (id_position) REFERENCES positions (id_position)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_diver) REFERENCES divers (id_diver)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    PRIMARY KEY (id_position, id_diver)
);

CREATE TABLE ships
(
    model varchar(10),
    name  varchar(32),
    fuel  decimal(6, 2) NOT NULL CHECK (fuel > 0),
    depth integer       NOT NULL check (depth > 0),
    PRIMARY KEY (model)
);

CREATE TABLE teams
(
    id_team serial,
    id_ship varchar(10) NOT NULL UNIQUE,
    crew    integer     NOT NULL CHECK (crew > 0),
    PRIMARY KEY (id_team),
    FOREIGN KEY (id_ship) REFERENCES ships (model)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE team_mem
(
    id_team  integer NOT NULL,
    id_diver integer NOT NULL,
    FOREIGN KEY (id_team) REFERENCES teams (id_team)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_diver) REFERENCES divers (id_diver)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    PRIMARY KEY (id_team, id_diver)
);

CREATE TABLE places
(
    id_place       serial,
    name           text    NOT NULL,
    altitude       integer NOT NULL CHECK (altitude <= 0),
    north_latitude float NOT NULL,
    east_longitude float NOT NULL,
    id_location    integer,
    FOREIGN KEY (id_location) REFERENCES places (id_place)
        ON UPDATE CASCADE,
    PRIMARY KEY (id_place)
);

CREATE TABLE divings
(
    id_diving serial,
    id_place  integer   NOT NULL,
    depth     integer   NOT NULL check (depth > 0),
    d_time    timestamp NOT NULL,
    FOREIGN KEY (id_place) REFERENCES places (id_place)
        ON UPDATE CASCADE,
    PRIMARY KEY (id_diving)
);

CREATE TABLE divs_team
(
    id_diving integer NOT NULL,
    id_team   integer NOT NULL,
    FOREIGN KEY (id_team) REFERENCES teams (id_team)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_diving) REFERENCES divings (id_diving)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    PRIMARY KEY (id_team, id_diving)
);

CREATE TABLE monsters
(
    id_monster serial,
    name       varchar(32) NOT NULL,
    size       integer     NOT NULL CHECK (size > 0),
    id_place   integer     NOT NULL,
    FOREIGN KEY (id_place) REFERENCES places (id_place)
        ON UPDATE CASCADE,
    PRIMARY KEY (id_monster)
);

CREATE TABLE eyes
(
    id_eye     serial,
    color      varchar(32) NOT NULL,
    size       integer     NOT NULL CHECK (size > 0),
    id_monster integer     NOT NULL,
    FOREIGN KEY (id_monster) REFERENCES monsters (id_monster)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    PRIMARY KEY (id_eye)
);

CREATE TABLE attacks
(
    id_diving  integer NOT NULL,
    id_monster integer NOT NULL,
    a_time     time    NOT NULL,
    FOREIGN KEY (id_diving) REFERENCES divings (id_diving)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (id_monster) REFERENCES monsters (id_monster)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    PRIMARY KEY (id_diving, id_monster)
);