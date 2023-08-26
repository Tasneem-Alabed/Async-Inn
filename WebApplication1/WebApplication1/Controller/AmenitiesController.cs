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
    public class AmenitiesController : ControllerBase
    {
        private readonly IAmenities _context;

        public AmenitiesController(IAmenities context)
        {
            _context = context;
        }

        // GET: api/Amenities
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Amenities>>> GetAmenity()
        {
            if (_context == null)
            {
                return NotFound();
            }
            return await _context.GetAmenities();
        }

        // GET: api/Amenities/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Amenities>> GetAmenity(int id)
        {
            if (_context == null)
            {
                return NotFound();
            }
            var amenity = await _context.GetAmenityById(id);

            if (amenity == null)
            {
                return NotFound();
            }

            return amenity;
        }

        // PUT: api/Amenities/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutAmenity([FromRoute] int id, [FromBody] Amenities amenity)
        {
            //if (id != amenity.Id)
            //{
            //    return BadRequest();
            //}

            var amenities = await _context.UpdateAmenity(id, amenity);

            return Ok(amenities);
        }

        // POST: api/Amenities
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Amenities>> PostAmenity(Amenities amenity)
        {
            if (_context == null)
            {
                return Problem("Entity set 'AsyncInnDbContext.Amenity'  is null.");
            }
            await _context.Create(amenity);
            return CreatedAtAction(nameof(GetAmenity), new { id = amenity.Id }, amenity);
        }

        // DELETE: api/Amenities/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAmenity(int id)
        {
            if (_context == null)
            {
                return NotFound();
            }
            var amenity = await _context.GetAmenityById(id);
            if (amenity == null)
            {
                return NotFound();
            }

            await _context.DeleteAmenity(id);

            return NoContent();
        }


    }
}