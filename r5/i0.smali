.class public final Lr5/i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lr5/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr5/h0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/c;",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lx6/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/h<",
            "Lh6/c;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lh6/c;",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "states"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr5/i0;->b:Ljava/util/Map;

    new-instance p1, Lx6/e;

    const-string v0, "Java nullability annotation states"

    invoke-direct {p1, v0}, Lx6/e;-><init>(Ljava/lang/String;)V

    new-instance v0, Lr5/i0$a;

    invoke-direct {v0, p0}, Lr5/i0$a;-><init>(Lr5/i0;)V

    invoke-virtual {p1, v0}, Lx6/e;->f(Lkotlin/jvm/functions/Function1;)Lx6/h;

    move-result-object p1

    const-string v0, "storageManager.createMem…cificFqname(states)\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lr5/i0;->c:Lx6/h;

    return-void
.end method


# virtual methods
.method public a(Lh6/c;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/c;",
            ")TT;"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lr5/i0;->c:Lx6/h;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
