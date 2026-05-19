.class public final Lc5/y$a;
.super Lc5/g0$c;
.source ""

# interfaces
.implements Lz4/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/y;
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
        "Lc5/g0$c<",
        "TR;>;",
        "Lz4/j$a<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final i:Lc5/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/y<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/y;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/y<",
            "TR;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lc5/g0$c;-><init>()V

    iput-object p1, p0, Lc5/y$a;->i:Lc5/y;

    return-void
.end method


# virtual methods
.method public b()Lz4/n;
    .registers 1

    iget-object p0, p0, Lc5/y$a;->i:Lc5/y;

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object p0, p0, Lc5/y$a;->i:Lc5/y;

    invoke-virtual {p0}, Lc5/y;->r()Lc5/y$a;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public m()Lc5/g0;
    .registers 1

    iget-object p0, p0, Lc5/y$a;->i:Lc5/y;

    return-object p0
.end method
