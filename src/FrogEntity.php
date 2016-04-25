<?php

namespace Jewei\Frognation;

class FrogEntity
{
    /**
     * Frog ID.
     */
    protected $id;

    /**
     * Name of the Frog.
     */
    protected $name;

    /**
     * Frog's avatar image.
     */
    protected $avatar;

    /**
     * Frog's gender.
     */
    protected $gender;

    /**
     * Date of birth.
     */
    protected $dob;

    /**
     * Date of death.
     */
    protected $death;

    /**
     * Pond ID where Frog lives in.
     */
    protected $pond_id;

    /**
     * Database object.
     */
    protected $db;

    /**
     * Accept an array of data matching properties of this class
     * and create the class
     *
     * @param array $data The data to use to create
     */
    public function __construct(array $data, $db = null)
    {
        if (isset($data['id'])) {
            $this->id = $data['id'];
        }
        $this->name = $data['name'];
        $this->avatar = $data['avatar'];
        $this->gender = $data['gender'];
        $this->dob = $data['dob'];
        $this->death = $data['death'];
        $this->pond_id = $data['pond_id'];
        $this->db = $db;
    }

    public function getId()
    {
        return $this->id;
    }

    public function getName()
    {
        return $this->name;
    }

    public function getAvatar()
    {
        return $this->avatar;
    }

    public function getGender()
    {
        return $this->gender;
    }

    public function getDob()
    {
        return $this->dob;
    }

    public function getDeathDate()
    {
        return $this->death;
    }

    public function getPondId()
    {
        return $this->pond_id;
    }

    public function getPondName()
    {
        return (new PondModel($this->db))->getById($this->getPondId())->getName();
    }
}
