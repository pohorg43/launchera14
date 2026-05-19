.class public final Lc5/e0$a;
.super Lc5/g0$b;
.source ""

# interfaces
.implements Lz4/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lc5/g0$b<",
        "TV;>;",
        "Lz4/p$a<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field public final i:Lc5/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/e0<",
            "TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/e0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/e0<",
            "TT;+TV;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lc5/g0$b;-><init>()V

    iput-object p1, p0, Lc5/e0$a;->i:Lc5/e0;

    return-void
.end method


# virtual methods
.method public b()Lz4/n;
    .registers 1

    iget-object p0, p0, Lc5/e0$a;->i:Lc5/e0;

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    iget-object p0, p0, Lc5/e0$a;->i:Lc5/e0;

    invoke-virtual {p0, p1}, Lc5/e0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public m()Lc5/g0;
    .registers 1

    iget-object p0, p0, Lc5/e0$a;->i:Lc5/e0;

    return-object p0
.end method
