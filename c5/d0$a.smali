.class public final Lc5/d0$a;
.super Lc5/g0$b;
.source ""

# interfaces
.implements Lz4/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lc5/g0$b<",
        "TR;>;",
        "Lz4/o$a<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final i:Lc5/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/d0<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/d0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/d0<",
            "+TR;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lc5/g0$b;-><init>()V

    iput-object p1, p0, Lc5/d0$a;->i:Lc5/d0;

    return-void
.end method


# virtual methods
.method public b()Lz4/n;
    .registers 1

    iget-object p0, p0, Lc5/d0$a;->i:Lc5/d0;

    return-object p0
.end method

.method public invoke()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object p0, p0, Lc5/d0$a;->i:Lc5/d0;

    invoke-virtual {p0}, Lc5/d0;->q()Lc5/d0$a;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public m()Lc5/g0;
    .registers 1

    iget-object p0, p0, Lc5/d0$a;->i:Lc5/d0;

    return-object p0
.end method
