.class public final Li5/g0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li5/g0$a;,
        Li5/g0$b;
    }
.end annotation


# instance fields
.field public final a:Lx6/m;

.field public final b:Li5/e0;

.field public final c:Lx6/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/g<",
            "Lh6/c;",
            "Li5/h0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lx6/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/g<",
            "Li5/g0$a;",
            "Li5/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx6/m;Li5/e0;)V
    .registers 4

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li5/g0;->a:Lx6/m;

    iput-object p2, p0, Li5/g0;->b:Li5/e0;

    new-instance p2, Li5/g0$d;

    invoke-direct {p2, p0}, Li5/g0$d;-><init>(Li5/g0;)V

    invoke-interface {p1, p2}, Lx6/m;->h(Lkotlin/jvm/functions/Function1;)Lx6/g;

    move-result-object p2

    iput-object p2, p0, Li5/g0;->c:Lx6/g;

    new-instance p2, Li5/g0$c;

    invoke-direct {p2, p0}, Li5/g0$c;-><init>(Li5/g0;)V

    invoke-interface {p1, p2}, Lx6/m;->h(Lkotlin/jvm/functions/Function1;)Lx6/g;

    move-result-object p1

    iput-object p1, p0, Li5/g0;->d:Lx6/g;

    return-void
.end method


# virtual methods
.method public final a(Lh6/b;Ljava/util/List;)Li5/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/b;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Li5/e;"
        }
    .end annotation

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParametersCount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Li5/g0;->d:Lx6/g;

    new-instance v0, Li5/g0$a;

    invoke-direct {v0, p1, p2}, Li5/g0$a;-><init>(Lh6/b;Ljava/util/List;)V

    check-cast p0, Lx6/e$m;

    invoke-virtual {p0, v0}, Lx6/e$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/e;

    return-object p0
.end method
