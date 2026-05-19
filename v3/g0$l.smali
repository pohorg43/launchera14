.class public final Lv3/g0$l;
.super Lv3/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv3/r<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lv3/e0;

.field public final b:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv3/e0;)V
    .registers 3

    invoke-direct {p0}, Lv3/r;-><init>()V

    iput-object p1, p0, Lv3/g0$l;->a:Lv3/e0;

    const-class v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lv3/e0;->a(Ljava/lang/Class;)Lv3/r;

    move-result-object v0

    iput-object v0, p0, Lv3/g0$l;->b:Lv3/r;

    const-class v0, Ljava/util/Map;

    invoke-virtual {p1, v0}, Lv3/e0;->a(Ljava/lang/Class;)Lv3/r;

    move-result-object v0

    iput-object v0, p0, Lv3/g0$l;->c:Lv3/r;

    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lv3/e0;->a(Ljava/lang/Class;)Lv3/r;

    move-result-object v0

    iput-object v0, p0, Lv3/g0$l;->d:Lv3/r;

    const-class v0, Ljava/lang/Double;

    invoke-virtual {p1, v0}, Lv3/e0;->a(Ljava/lang/Class;)Lv3/r;

    move-result-object v0

    iput-object v0, p0, Lv3/g0$l;->e:Lv3/r;

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lv3/e0;->a(Ljava/lang/Class;)Lv3/r;

    move-result-object p1

    iput-object p1, p0, Lv3/g0$l;->f:Lv3/r;

    return-void
.end method


# virtual methods
.method public a(Lv3/w;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lv3/w;->l()Lv3/w$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_57

    const/4 v1, 0x5

    if-eq v0, v1, :cond_50

    const/4 v1, 0x6

    if-eq v0, v1, :cond_49

    const/4 v1, 0x7

    if-eq v0, v1, :cond_42

    const/16 p0, 0x8

    if-ne v0, p0, :cond_1f

    invoke-virtual {p1}, Lv3/w;->j()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Expected a value but was "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lv3/w;->l()Lv3/w$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    iget-object p0, p0, Lv3/g0$l;->f:Lv3/r;

    invoke-virtual {p0, p1}, Lv3/r;->a(Lv3/w;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_49
    iget-object p0, p0, Lv3/g0$l;->e:Lv3/r;

    invoke-virtual {p0, p1}, Lv3/r;->a(Lv3/w;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_50
    iget-object p0, p0, Lv3/g0$l;->d:Lv3/r;

    invoke-virtual {p0, p1}, Lv3/r;->a(Lv3/w;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_57
    iget-object p0, p0, Lv3/g0$l;->c:Lv3/r;

    invoke-virtual {p0, p1}, Lv3/r;->a(Lv3/w;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5e
    iget-object p0, p0, Lv3/g0$l;->b:Lv3/r;

    invoke-virtual {p0, p1}, Lv3/r;->a(Lv3/w;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public c(Lv3/b0;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_f

    invoke-virtual {p1}, Lv3/b0;->b()Lv3/b0;

    invoke-virtual {p1}, Lv3/b0;->e()Lv3/b0;

    goto :goto_30

    :cond_f
    iget-object p0, p0, Lv3/g0$l;->a:Lv3/e0;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-class v0, Ljava/util/Map;

    goto :goto_26

    :cond_1c
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-class v0, Ljava/util/Collection;

    :cond_26
    :goto_26
    sget-object v1, Lw3/b;->a:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lv3/e0;->d(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lv3/r;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lv3/r;->c(Lv3/b0;Ljava/lang/Object;)V

    :goto_30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "JsonAdapter(Object)"

    return-object p0
.end method
