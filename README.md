# digital-stethoscope-
Wir entwickeln ein digitales Stethoskop ("Stethogram") als low-cost Open Source Hardware

# Open Source Digital Stethoscope

An affordable and reproducible digital stethoscope designed for local manufacturing using FDM 3D printing. The project aims to provide a robust and repairable platform for recording heart and lung sounds, especially in regions with limited access to medical equipment.

---

## Motivation

Commercial digital stethoscopes are often expensive and difficult to obtain in many parts of the world. The goal of this project is to develop an open-source hardware platform that can be manufactured locally with commonly available components and a standard FDM 3D printer.

The design was developed in collaboration with a physician from Sudan, who helped define the main requirements and intended use cases.

---

## Design Requirements

* Operation in ambient temperatures up to 60 °C
* Resistance to cleaning with soap water and disinfectants
* Mechanical robustness against drops and impacts
* Simple assembly with minimal tools
* Replaceable electronics
* Local manufacturability using FDM 3D printing
* Open-source documentation for easy reproduction

---

## Hardware

### Main Components

* ESP32-S3 development board
* MEMS microphone (SPH0641LU4H)
* 3.7 V LiPo battery (900 mAh)
* Battery charging module (BMS)
* Acoustic membrane made from PE film
* Three-part 3D printed enclosure

---

## Mechanical Design

The enclosure consists of three parts:

1. Electronics carrier
2. Rear housing with external thread
3. Front housing with internal thread

The modular design allows all electronic components to be installed after printing and replaced if necessary.

The enclosure is optimized for FDM manufacturing and can be printed in PLA for prototyping or PETG/ABS for final applications.

---

## Repository Structure

```
3D-Models/
├── f3d
├── par
└── stp

Docs/
├── Assembly
└── pictures
└─ Bill_of_Materials
└─ Stetoscope_Requirements

Electronics/

Firmware/



```

---

## Bill of Materials

A complete Bill of Materials (BOM) is available in the BOM folder.

Main components include:

| Component                   | Quantity |
| --------------------------- | -------- |
| ESP32-S3                    | 1        |
| MEMS microphone SPH0641LU4H | 1        |
| LiPo battery 900 mAh        | 1        |
| Battery charging module     | 1        |
| Acoustic membrane (PE film) | 1        |
| 3D printed housing parts    | 3        |

---

## Assembly

Detailed assembly instructions with pictures are provided in the Assembly folder.

The assembly process consists of:

1. Installing the acoustic membrane
2. Inserting the battery
3. Installing the battery charging module
4. Mounting the ESP32-S3
5. Installing the MEMS microphone
6. Inserting the electronics carrier into the housing
7. Closing the enclosure
8. Attaching the membrane cap

---

## Manufacturing

### Recommended Materials

* PLA (prototyping)
* PETG (recommended)
* ABS (high-temperature environments)

### Manufacturing Method

FDM 3D Printing

---

## Current Status

Prototype stage

* Mechanical design completed
* First integrated prototype assembled
* Electronics integration demonstrated
* Signal processing and software development are still under development

---

## Lessons Learned

During development several challenges were identified:

* Inconsistent CAD workflows between different CAD systems led to interface issues.
* Missing version control resulted in printing outdated part revisions.
* Some system requirements were identified only during later design iterations.

These findings highlighted the importance of unified CAD workflows, proper version management and early system-level planning.

---

## Future Work

* Signal processing and filtering
* Smartphone connectivity
* Acoustic characterization and validation
* Clinical evaluation
* Improved power management
* Integration of an on/off switch
* Field testing and further open-source development

---

## Contributors

Developed as part of the "Konstruktion 3 – Kunststoffkonstruktion" course at flensburg university of applied science.

Mechanical design and hardware integration by the student team in collaboration with the supervising professor.

---

## License

This project is intended to be released as Open Source Hardware.

CAD files, documentation and source code are provided to enable reproduction, modification and further development by the community.

# Print Settings – Electronics Plate

This document contains the print settings used to manufacture the electronics plate using FDM 3D printing.

## Hardware

| Parameter | Value |
|-----------|---------|
| Part | Electronics Plate |
| Printer | Bambu Lab A1 |
| Nozzle Diameter | 0.4 mm |
| Filament | PLA |

## Print Settings

| Parameter | Value |
|-----------|---------|
| Layer Height | 0.08 mm (Extra Fine) |

## Support Settings

| Parameter | Value |
|-----------|---------|
| Supports Enabled | Yes |
| Support Type | Tree (Auto) |
| Support Style | Standard |
| Threshold Angle | 15° |
| Build Plate Only | Yes |
| Critical Regions Only | Yes |
| Remove Small Overhangs | No |

## Description

The electronics plate was printed using a Bambu Lab A1 equipped with a 0.4 mm nozzle and PLA filament. A layer height of 0.08 mm was selected to achieve a high level of detail and surface quality.

Tree supports were enabled and automatically generated by the slicer. Supports were restricted to the build plate and only applied to critical overhangs, reducing both material consumption and post-processing effort.

## Software

- Bambu Studio

## Notes

- Optimized for high-quality surface finish
- Minimal support material usage
- Easy support removal through tree support structures
- Suitable for functional and aesthetic prototype parts

## License

The print settings provided in this repository may be freely used, modified, and distributed.
