.class final Lokio/internal/EocdRecord;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final centralDirectoryOffset:J

.field private final commentByteCount:I

.field private final entryCount:J


# direct methods
.method public constructor <init>(JJI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lokio/internal/EocdRecord;->entryCount:J

    iput-wide p3, p0, Lokio/internal/EocdRecord;->centralDirectoryOffset:J

    iput p5, p0, Lokio/internal/EocdRecord;->commentByteCount:I

    return-void
.end method


# virtual methods
.method public final getCentralDirectoryOffset()J
    .registers 3

    iget-wide v0, p0, Lokio/internal/EocdRecord;->centralDirectoryOffset:J

    return-wide v0
.end method

.method public final getCommentByteCount()I
    .registers 1

    iget p0, p0, Lokio/internal/EocdRecord;->commentByteCount:I

    return p0
.end method

.method public final getEntryCount()J
    .registers 3

    iget-wide v0, p0, Lokio/internal/EocdRecord;->entryCount:J

    return-wide v0
.end method
