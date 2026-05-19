.class public final Lk8/g$f;
.super Lf8/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk8/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final b:Z

.field public final c:I

.field public final d:I

.field public final synthetic e:Lk8/g;


# direct methods
.method public constructor <init>(Lk8/g;ZII)V
    .registers 7

    iput-object p1, p0, Lk8/g$f;->e:Lk8/g;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lk8/g;->d:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping %08x%08x"

    invoke-direct {p0, p1, v0}, Lf8/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p2, p0, Lk8/g$f;->b:Z

    iput p3, p0, Lk8/g$f;->c:I

    iput p4, p0, Lk8/g$f;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lk8/g$f;->e:Lk8/g;

    iget-boolean v1, p0, Lk8/g$f;->b:Z

    iget v2, p0, Lk8/g$f;->c:I

    iget p0, p0, Lk8/g$f;->d:I

    invoke-virtual {v0, v1, v2, p0}, Lk8/g;->k(ZII)V

    return-void
.end method
