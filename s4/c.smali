.class public final Ls4/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj7/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls4/c$a;,
        Ls4/c$b;,
        Ls4/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj7/h<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ls4/d;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ls4/d;)V
    .registers 4

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls4/c;->a:Ljava/io/File;

    iput-object p2, p0, Ls4/c;->b:Ls4/d;

    const p1, 0x7fffffff

    iput p1, p0, Ls4/c;->c:I

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ls4/c$b;

    invoke-direct {v0, p0}, Ls4/c$b;-><init>(Ls4/c;)V

    return-object v0
.end method
