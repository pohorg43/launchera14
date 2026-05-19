.class public Lv3/c0$c$a;
.super Lv3/c0$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv3/c0$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv3/c0<",
        "TK;TV;>.e<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lv3/c0$c;)V
    .registers 2

    iget-object p1, p1, Lv3/c0$c;->a:Lv3/c0;

    invoke-direct {p0, p1}, Lv3/c0$e;-><init>(Lv3/c0;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lv3/c0$e;->a()Lv3/c0$f;

    move-result-object p0

    return-object p0
.end method
