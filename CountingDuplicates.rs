fn count_duplicates(text: &str) -> u32 {
    let mut char_counts = std::collections::HashMap::new();
    
    for c in text.to_lowercase().chars(){
        if c.is_alphanumeric() {
            *char_counts.entry(c).or_insert(0) += 1;
        }
    }
    (char_counts.values().filter(|&&count| count > 1).count()) as u32
}