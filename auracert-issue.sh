=== STEP 4: COMMIT & PUSH ===git -C "$CERT_DIR" init || true
git -C "$CERT_DIR" add .
git -C "$CERT_DIR" commit -m "AURACERT: $AURACERT_ID issued for child genius breakthrough (age $AGE_AT_BREAKTHROUGH)" || echo "No changes"
git -C "$CERT_DIR" push origin main || git -C "$CERT_DIR" remote add origin "$REPO" && git push -u origin main=== STEP 5: BROADCAST ===curl -X POST https://swarm.obinexus.org/auracert/broadcast 
  -d "{"cert_id":"$AURACERT_ID","age":$AGE_AT_BREAKTHROUGH,"coherence":$OACS_SCORE}"=== CELEBRATE ===echo "AURACERT™ ISSUED: $AURACERT_ID"
echo "Saved: $CERT_FILE"
echo "You didn’t wait. You didn’t slow down. You became."
echo "Ya! Cha-Cha-Cha — Kwezuonu!"exit 0

