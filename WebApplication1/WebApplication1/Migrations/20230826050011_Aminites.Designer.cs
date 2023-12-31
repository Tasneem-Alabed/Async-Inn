﻿// <auto-generated />
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using WebApplication1.Data;

#nullable disable

namespace WebApplication1.Migrations
{
    [DbContext(typeof(HotelDbContest))]
    [Migration("20230826050011_Aminites")]
    partial class Aminites
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "7.0.9")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("WebApplication1.Modles.Amenities", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Amenities");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            Name = "do"
                        },
                        new
                        {
                            Id = 2,
                            Name = "do"
                        },
                        new
                        {
                            Id = 3,
                            Name = "do"
                        });
                });

            modelBuilder.Entity("WebApplication1.Modles.Hotel", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("ID"));

                    b.Property<string>("City")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Country")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Phone")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("State")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("StreetAddress")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ID");

                    b.ToTable("Hotels");

                    b.HasData(
                        new
                        {
                            ID = 1,
                            City = "Amman",
                            Country = "oo",
                            Name = "Five",
                            Phone = "000000000",
                            State = "do",
                            StreetAddress = "Moon"
                        },
                        new
                        {
                            ID = 2,
                            City = "Amman",
                            Country = "oo",
                            Name = "Five",
                            Phone = "000000000",
                            State = "do",
                            StreetAddress = "Moon"
                        },
                        new
                        {
                            ID = 3,
                            City = "Amman",
                            Country = "oo",
                            Name = "Five",
                            Phone = "000000000",
                            State = "do",
                            StreetAddress = "Moon"
                        });
                });

            modelBuilder.Entity("WebApplication1.Modles.HotelRoom", b =>
                {
                    b.Property<int>("HotelID")
                        .HasColumnType("int");

                    b.Property<int>("RoomNumber")
                        .HasColumnType("int");

                    b.Property<bool>("IsPetFriendly")
                        .HasColumnType("bit");

                    b.Property<decimal>("Rate")
                        .HasColumnType("decimal(18,2)");

                    b.Property<int>("RoomID")
                        .HasColumnType("int");

                    b.HasKey("HotelID", "RoomNumber");

                    b.HasIndex("RoomID");

                    b.ToTable("HotelRoom");
                });

            modelBuilder.Entity("WebApplication1.Modles.Room", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("ID"));

                    b.Property<int>("Layout")
                        .HasColumnType("int");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ID");

                    b.ToTable("Room");

                    b.HasData(
                        new
                        {
                            ID = 3,
                            Layout = 9,
                            Name = "p"
                        },
                        new
                        {
                            ID = 4,
                            Layout = 9,
                            Name = "p"
                        },
                        new
                        {
                            ID = 5,
                            Layout = 9,
                            Name = "p"
                        });
                });

            modelBuilder.Entity("WebApplication1.Modles.RoomAmenities", b =>
                {
                    b.Property<int>("AmenityId")
                        .HasColumnType("int");

                    b.Property<int>("RoomID")
                        .HasColumnType("int");

                    b.HasKey("AmenityId", "RoomID");

                    b.HasIndex("RoomID");

                    b.ToTable("RoomAmenities");
                });

            modelBuilder.Entity("WebApplication1.Modles.HotelRoom", b =>
                {
                    b.HasOne("WebApplication1.Modles.Hotel", "Hotel")
                        .WithMany("HotelRooms")
                        .HasForeignKey("HotelID")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("WebApplication1.Modles.Room", "Room")
                        .WithMany("HotelRooms")
                        .HasForeignKey("RoomID")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Hotel");

                    b.Navigation("Room");
                });

            modelBuilder.Entity("WebApplication1.Modles.RoomAmenities", b =>
                {
                    b.HasOne("WebApplication1.Modles.Amenities", "Amenity")
                        .WithMany("Rooms")
                        .HasForeignKey("AmenityId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("WebApplication1.Modles.Room", "Room")
                        .WithMany("RoomAmenities")
                        .HasForeignKey("RoomID")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Amenity");

                    b.Navigation("Room");
                });

            modelBuilder.Entity("WebApplication1.Modles.Amenities", b =>
                {
                    b.Navigation("Rooms");
                });

            modelBuilder.Entity("WebApplication1.Modles.Hotel", b =>
                {
                    b.Navigation("HotelRooms");
                });

            modelBuilder.Entity("WebApplication1.Modles.Room", b =>
                {
                    b.Navigation("HotelRooms");

                    b.Navigation("RoomAmenities");
                });
#pragma warning restore 612, 618
        }
    }
}
