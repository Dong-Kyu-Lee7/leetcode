import pandas as pd

def students_and_examinations(students: pd.DataFrame, subjects: pd.DataFrame, examinations: pd.DataFrame) -> pd.DataFrame:
    result = pd.merge(students, subjects, how = 'cross')
    counts = (examinations.groupby(['student_id', 'subject_name']).size().reset_index()).rename(columns = {0:'attended_exams'})
    result = result.merge(counts, on = ['student_id', 'subject_name'], how = 'left').fillna({'attended_exams':0})
    result = result.sort_values(['student_id','subject_name'])
    return result