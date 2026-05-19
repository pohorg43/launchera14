.class public final Lv3/c0$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
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

.field public b:Lv3/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/c0$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public c:Lv3/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/c0$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public d:Lv3/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/c0$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public e:Lv3/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/c0$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final g:I

.field public h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public i:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lv3/c0$f;->f:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lv3/c0$f;->g:I

    iput-object p0, p0, Lv3/c0$f;->e:Lv3/c0$f;

    iput-object p0, p0, Lv3/c0$f;->d:Lv3/c0$f;

    return-void
.end method

.method public constructor <init>(Lv3/c0$f;Ljava/lang/Object;ILv3/c0$f;Lv3/c0$f;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/c0$f<",
            "TK;TV;>;TK;I",
            "Lv3/c0$f<",
            "TK;TV;>;",
            "Lv3/c0$f<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/c0$f;->a:Lv3/c0$f;

    iput-object p2, p0, Lv3/c0$f;->f:Ljava/lang/Object;

    iput p3, p0, Lv3/c0$f;->g:I

    const/4 p1, 0x1

    iput p1, p0, Lv3/c0$f;->i:I

    iput-object p4, p0, Lv3/c0$f;->d:Lv3/c0$f;

    iput-object p5, p0, Lv3/c0$f;->e:Lv3/c0$f;

    iput-object p0, p5, Lv3/c0$f;->d:Lv3/c0$f;

    iput-object p0, p4, Lv3/c0$f;->e:Lv3/c0$f;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lv3/c0$f;->f:Ljava/lang/Object;

    if-nez v0, :cond_12

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_32

    goto :goto_1c

    :cond_12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    :goto_1c
    iget-object p0, p0, Lv3/c0$f;->h:Ljava/lang/Object;

    if-nez p0, :cond_27

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_32

    goto :goto_31

    :cond_27
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    :goto_31
    const/4 v1, 0x1

    :cond_32
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object p0, p0, Lv3/c0$f;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object p0, p0, Lv3/c0$f;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lv3/c0$f;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    iget-object p0, p0, Lv3/c0$f;->h:Ljava/lang/Object;

    if-nez p0, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_14
    xor-int p0, v0, v1

    return p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lv3/c0$f;->h:Ljava/lang/Object;

    iput-object p1, p0, Lv3/c0$f;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lv3/c0$f;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lv3/c0$f;->h:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
