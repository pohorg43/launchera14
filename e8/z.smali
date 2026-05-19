.class public final Le8/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le8/z$a;
    }
.end annotation


# instance fields
.field public final a:Le8/x;

.field public final b:Le8/v;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Le8/p;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final f:Le8/q;

.field public final g:Le8/b0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final h:Le8/z;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final i:Le8/z;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final j:Le8/z;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final k:J

.field public final l:J

.field public volatile m:Le8/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le8/z$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Le8/z$a;->a:Le8/x;

    iput-object v0, p0, Le8/z;->a:Le8/x;

    iget-object v0, p1, Le8/z$a;->b:Le8/v;

    iput-object v0, p0, Le8/z;->b:Le8/v;

    iget v0, p1, Le8/z$a;->c:I

    iput v0, p0, Le8/z;->c:I

    iget-object v0, p1, Le8/z$a;->d:Ljava/lang/String;

    iput-object v0, p0, Le8/z;->d:Ljava/lang/String;

    iget-object v0, p1, Le8/z$a;->e:Le8/p;

    iput-object v0, p0, Le8/z;->e:Le8/p;

    iget-object v0, p1, Le8/z$a;->f:Le8/q$a;

    new-instance v1, Le8/q;

    invoke-direct {v1, v0}, Le8/q;-><init>(Le8/q$a;)V

    iput-object v1, p0, Le8/z;->f:Le8/q;

    iget-object v0, p1, Le8/z$a;->g:Le8/b0;

    iput-object v0, p0, Le8/z;->g:Le8/b0;

    iget-object v0, p1, Le8/z$a;->h:Le8/z;

    iput-object v0, p0, Le8/z;->h:Le8/z;

    iget-object v0, p1, Le8/z$a;->i:Le8/z;

    iput-object v0, p0, Le8/z;->i:Le8/z;

    iget-object v0, p1, Le8/z$a;->j:Le8/z;

    iput-object v0, p0, Le8/z;->j:Le8/z;

    iget-wide v0, p1, Le8/z$a;->k:J

    iput-wide v0, p0, Le8/z;->k:J

    iget-wide v0, p1, Le8/z$a;->l:J

    iput-wide v0, p0, Le8/z;->l:J

    return-void
.end method


# virtual methods
.method public a()Le8/c;
    .registers 2

    iget-object v0, p0, Le8/z;->m:Le8/c;

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    iget-object v0, p0, Le8/z;->f:Le8/q;

    invoke-static {v0}, Le8/c;->a(Le8/q;)Le8/c;

    move-result-object v0

    iput-object v0, p0, Le8/z;->m:Le8/c;

    :goto_d
    return-object v0
.end method

.method public close()V
    .registers 2

    iget-object p0, p0, Le8/z;->g:Le8/b0;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Le8/b0;->close()V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "response is not eligible for a body and must not be closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Response{protocol="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le8/z;->b:Le8/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le8/z;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le8/z;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le8/z;->a:Le8/x;

    iget-object p0, p0, Le8/x;->a:Le8/r;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
