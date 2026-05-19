.class public final Lv3/c0$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lv3/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/c0$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lv3/c0$f;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/c0$f<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p1, Lv3/c0$f;->c:Lv3/c0$f;

    iput-object v0, p1, Lv3/c0$f;->a:Lv3/c0$f;

    iput-object v0, p1, Lv3/c0$f;->b:Lv3/c0$f;

    const/4 v0, 0x1

    iput v0, p1, Lv3/c0$f;->i:I

    iget v1, p0, Lv3/c0$b;->b:I

    if-lez v1, :cond_1f

    iget v2, p0, Lv3/c0$b;->d:I

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_1f

    add-int/2addr v2, v0

    iput v2, p0, Lv3/c0$b;->d:I

    sub-int/2addr v1, v0

    iput v1, p0, Lv3/c0$b;->b:I

    iget v1, p0, Lv3/c0$b;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lv3/c0$b;->c:I

    :cond_1f
    iget-object v1, p0, Lv3/c0$b;->a:Lv3/c0$f;

    iput-object v1, p1, Lv3/c0$f;->a:Lv3/c0$f;

    iput-object p1, p0, Lv3/c0$b;->a:Lv3/c0$f;

    iget p1, p0, Lv3/c0$b;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lv3/c0$b;->d:I

    iget v1, p0, Lv3/c0$b;->b:I

    if-lez v1, :cond_3d

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_3d

    add-int/2addr p1, v0

    iput p1, p0, Lv3/c0$b;->d:I

    sub-int/2addr v1, v0

    iput v1, p0, Lv3/c0$b;->b:I

    iget p1, p0, Lv3/c0$b;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lv3/c0$b;->c:I

    :cond_3d
    const/4 p1, 0x4

    :goto_3e
    iget v1, p0, Lv3/c0$b;->d:I

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_80

    iget v1, p0, Lv3/c0$b;->c:I

    if-nez v1, :cond_63

    iget-object v1, p0, Lv3/c0$b;->a:Lv3/c0$f;

    iget-object v2, v1, Lv3/c0$f;->a:Lv3/c0$f;

    iget-object v3, v2, Lv3/c0$f;->a:Lv3/c0$f;

    iget-object v4, v3, Lv3/c0$f;->a:Lv3/c0$f;

    iput-object v4, v2, Lv3/c0$f;->a:Lv3/c0$f;

    iput-object v2, p0, Lv3/c0$b;->a:Lv3/c0$f;

    iput-object v3, v2, Lv3/c0$f;->b:Lv3/c0$f;

    iput-object v1, v2, Lv3/c0$f;->c:Lv3/c0$f;

    iget v4, v1, Lv3/c0$f;->i:I

    add-int/2addr v4, v0

    iput v4, v2, Lv3/c0$f;->i:I

    iput-object v2, v3, Lv3/c0$f;->a:Lv3/c0$f;

    iput-object v2, v1, Lv3/c0$f;->a:Lv3/c0$f;

    goto :goto_7d

    :cond_63
    const/4 v2, 0x0

    if-ne v1, v0, :cond_78

    iget-object v1, p0, Lv3/c0$b;->a:Lv3/c0$f;

    iget-object v3, v1, Lv3/c0$f;->a:Lv3/c0$f;

    iput-object v3, p0, Lv3/c0$b;->a:Lv3/c0$f;

    iput-object v1, v3, Lv3/c0$f;->c:Lv3/c0$f;

    iget v4, v1, Lv3/c0$f;->i:I

    add-int/2addr v4, v0

    iput v4, v3, Lv3/c0$f;->i:I

    iput-object v3, v1, Lv3/c0$f;->a:Lv3/c0$f;

    iput v2, p0, Lv3/c0$b;->c:I

    goto :goto_7d

    :cond_78
    const/4 v3, 0x2

    if-ne v1, v3, :cond_7d

    iput v2, p0, Lv3/c0$b;->c:I

    :cond_7d
    :goto_7d
    mul-int/lit8 p1, p1, 0x2

    goto :goto_3e

    :cond_80
    return-void
.end method

.method public b(I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iput v0, p0, Lv3/c0$b;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lv3/c0$b;->d:I

    iput p1, p0, Lv3/c0$b;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lv3/c0$b;->a:Lv3/c0$f;

    return-void
.end method
