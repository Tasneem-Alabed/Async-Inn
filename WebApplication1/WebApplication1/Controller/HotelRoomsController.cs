﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebApplication1.Data;
using WebApplication1.Modles;
using WebApplication1.Modles.Interfse;

namespace AsyncInn.Controller
{
    [Route("api/[controller]")]
    [ApiController]
    public class HotelRoomsController : ControllerBase
    {
        private readonly IHotelPoom _context;

        public HotelRoomsController(IHotelPoom context)
        {
            _context = context;
        }

        // GET: api/HotelRooms
        [HttpGet]
        [Route("/api/Hotels/{hotelId}/Rooms")]
        public async Task<ActionResult<IEnumerable<HotelRoom>>> GetHotelRooms([FromRoute] int hotelId)
        {
            if (_context == null)
            {
                return NotFound();
            }

            var hotelRooms = await _context.GetHotelRooms(hotelId);

            return Ok(hotelRooms);
        }

        // GET: api/HotelRooms/5
        [HttpGet("/api/Hotels/{hotelId}/Rooms/{roomNumber}")]
        public async Task<ActionResult<HotelRoom>> GetHotelRoom(int hotelId, int roomNumber)
        {
            var hotelRoom = await _context.GetHotelRoomsDetails(hotelId, roomNumber);

            if (hotelRoom == null)
            {
                return NotFound();
            }

            return Ok(hotelRoom);
        }

        // PUT: api/HotelRooms/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut]
        [Route("/api/Hotels/{hotelId}/Rooms/{roomNumber}")]
        public async Task<IActionResult> PutHotelRoom([FromRoute] int hotelId, [FromRoute] int roomNumber, [FromBody] HotelRoom hotelRoom)
        {

            var updateHotelRoom = await _context.UpdateHotelRooms(hotelId, roomNumber, hotelRoom);



            return Ok(updateHotelRoom);
        }

        // POST: api/HotelRooms
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        [Route("/api/Hotels/{hotelId}/Rooms")]
        public async Task<ActionResult<HotelRoom>> PostHotelRoom(HotelRoom hotelRoom, int hotelId)
        {
            var addedHotelRoom = await _context.Create(hotelRoom, hotelId);
            return Ok(addedHotelRoom);
        }

        // DELETE: api/HotelRooms/5
        [HttpDelete]
        [Route("/api/Hotels/{hotelId}/Rooms/{roomNumber}")]
        public async Task<IActionResult> DeleteHotelRoom(int hotelId, int roomNumber)
        {
            if (_context == null)
            {
                return NotFound();
            }
            await _context.DeleteHotelRooms(hotelId, roomNumber);

            return NoContent();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        [HttpGet]
        [Route("/api/Hotels/byName/{name}")]
        public async Task<ActionResult<IEnumerable<HotelRoom>>> getHotelRoomsByName([FromRoute] string name)
        {
            if (_context == null)
            {
                return NotFound();
            }

            var hotelRooms = await _context.GetHotelRoomsByName(name);

            return Ok(hotelRooms);
        }

    }
}