.class public final Lc5/a0$a;
.super Lc5/g0$c;
.source ""

# interfaces
.implements Lz4/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/a0;
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
        "Lc5/g0$c<",
        "TV;>;",
        "Lz4/l$a<",
        "TD;TE;TV;>;"
    }
.end annotation


# instance fields
.field public final i:Lc5/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/a0<",
            "TD;TE;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/a0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/a0<",
            "TD;TE;TV;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lc5/g0$c;-><init>()V

    iput-object p1, p0, Lc5/a0$a;->i:Lc5/a0;

    return-void
.end method


# virtual methods
.method public b()Lz4/n;
    .registers 1

    iget-object p0, p0, Lc5/a0$a;->i:Lc5/a0;

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object p0, p0, Lc5/a0$a;->i:Lc5/a0;

    invoke-virtual {p0}, Lc5/a0;->s()Lc5/a0$a;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public m()Lc5/g0;
    .registers 1

    iget-object p0, p0, Lc5/a0$a;->i:Lc5/a0;

    return-object p0
.end method
