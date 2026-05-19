.class public Lz1/b;
.super Lz1/a;
.source ""


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lz1/a;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public n()J
    .registers 4

    const-wide/16 v0, -0x1

    :try_start_2
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lv1/s;->c(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_8
    .catch Lv1/r; {:try_start_2 .. :try_end_8} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_8} :catch_8

    :catch_8
    return-wide v0
.end method
