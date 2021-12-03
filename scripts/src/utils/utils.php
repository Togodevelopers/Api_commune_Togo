<?php

class Utils
{
    /**
     * Unset from array unnecessary attribute given in second param
     * @param array $dataArray
     * @param string $attr
     * @return array $result
     */
    public static function removeAttribute(array $dataArray, string $attr)
    {
        $result = [];

        foreach ($dataArray as $data) {
            unset($data[$attr]);
            $result[] = $data;
        }

        return $result;
    }

    /**
     * Data casting from string to int (for ids) or double for (lat, lon, areas)
     */
    public static function dataTypeConversion(array $dataArray)
    {
        $result = [];

        foreach ($dataArray as $data) {
            $data['id']         = (int)$data['id'];
            $data['latitude']   = array_key_exists('latitude', $data) ? (float)$data['latitude'] : 0.0;
            $data['longitude']  = array_key_exists('longitude', $data) ? (float)$data['longitude'] : 0.0;

            if (array_key_exists('population', $data)) {
                $data['population'] = $data['population'] ? (float)$data['population'] : 0.0;
            }

            if (array_key_exists('superficie', $data)) {
                $data['superficie'] = $data['superficie'] ? (float)$data['superficie'] : 0.0;
            }

            $result[] = $data;
        }

        return $result;
    }
}
