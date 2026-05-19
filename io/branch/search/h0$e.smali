.class public final Lio/branch/search/h0$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/h0$e$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/h0$e$a;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/h0$e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/h0$e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/h0$e;->Companion:Lio/branch/search/h0$e$a;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkVersion"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threadName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stackTrace"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/h0$e;->a:Ljava/io/File;

    iput-wide p2, p0, Lio/branch/search/h0$e;->b:J

    iput-object p4, p0, Lio/branch/search/h0$e;->c:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/h0$e;->d:Ljava/lang/String;

    iput-object p6, p0, Lio/branch/search/h0$e;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/h0$e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/h0$e;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/h0$e;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final d()J
    .registers 3

    iget-wide v0, p0, Lio/branch/search/h0$e;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    if-eq p0, p1, :cond_3b

    instance-of v0, p1, Lio/branch/search/h0$e;

    if-eqz v0, :cond_39

    check-cast p1, Lio/branch/search/h0$e;

    iget-object v0, p0, Lio/branch/search/h0$e;->a:Ljava/io/File;

    iget-object v1, p1, Lio/branch/search/h0$e;->a:Ljava/io/File;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-wide v0, p0, Lio/branch/search/h0$e;->b:J

    iget-wide v2, p1, Lio/branch/search/h0$e;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_39

    iget-object v0, p0, Lio/branch/search/h0$e;->c:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/h0$e;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lio/branch/search/h0$e;->d:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/h0$e;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object p0, p0, Lio/branch/search/h0$e;->e:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/h0$e;->e:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    goto :goto_3b

    :cond_39
    const/4 p0, 0x0

    return p0

    :cond_3b
    :goto_3b
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .registers 7

    iget-object v0, p0, Lio/branch/search/h0$e;->a:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lio/branch/search/h0$e;->b:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/h0$e;->c:Ljava/lang/String;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_22

    :cond_21
    move v2, v1

    :goto_22
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/h0$e;->d:Ljava/lang/String;

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2f

    :cond_2e
    move v2, v1

    :goto_2f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/branch/search/h0$e;->e:Ljava/lang/String;

    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3a
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "PersistedCrash(file="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/h0$e;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/branch/search/h0$e;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/h0$e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", threadName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/h0$e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stackTrace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/h0$e;->e:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
