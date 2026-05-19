.class public final Lc5/f0$a;
.super Lc5/g0$b;
.source ""

# interfaces
.implements Lz4/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lc5/g0$b<",
        "TV;>;",
        "Lz4/q$a<",
        "TD;TE;TV;>;"
    }
.end annotation


# instance fields
.field public final i:Lc5/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/f0<",
            "TD;TE;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/f0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/f0<",
            "TD;TE;+TV;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lc5/g0$b;-><init>()V

    iput-object p1, p0, Lc5/f0$a;->i:Lc5/f0;

    return-void
.end method


# virtual methods
.method public b()Lz4/n;
    .registers 1

    iget-object p0, p0, Lc5/f0$a;->i:Lc5/f0;

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TE;)TV;"
        }
    .end annotation

    iget-object p0, p0, Lc5/f0$a;->i:Lc5/f0;

    invoke-virtual {p0, p1, p2}, Lc5/f0;->q(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public m()Lc5/g0;
    .registers 1

    iget-object p0, p0, Lc5/f0$a;->i:Lc5/f0;

    return-object p0
.end method
