// filepath: utils/apiUtils.ts
import { process } from 'process';

export const buildApiUrl = (endpoint: string): string => {
    return `${process.env.API_BASE_URL}/${endpoint}`;
};