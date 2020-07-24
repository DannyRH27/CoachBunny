export const coachingSessionSearch = ({ sportId, duration }) => {
  return (
    $.ajax({
      url: `/api/coach_details?sport_id=${sportId}&duration=${duration}`,
      method: 'GET',
    })
  );
};
