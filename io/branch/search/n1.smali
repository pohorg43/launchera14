.class public final Lio/branch/search/n1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/n1$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/n1$a;


# instance fields
.field public final a:Lio/branch/search/p1;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/n1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/n1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/n1;->Companion:Lio/branch/search/n1$a;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/p1;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/p1;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/n1;->a:Lio/branch/search/p1;

    iput-object p2, p0, Lio/branch/search/n1;->b:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Lio/branch/search/n1;JJJILjava/lang/Object;)Lj7/h;
    .registers 16

    and-int/lit8 p7, p7, 0x4

    if-eqz p7, :cond_7

    const-wide/32 p5, 0x36ee80

    :cond_7
    move-wide v5, p5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lio/branch/search/n1;->a(JJJ)Lj7/h;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/branch/search/n1;Lio/branch/search/o1;Ljava/util/Set;)Ljava/util/List;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lio/branch/search/n1;->a(Lio/branch/search/o1;Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/branch/search/n1;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lio/branch/search/n1;->b:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic b(Lio/branch/search/n1;)Lio/branch/search/p1;
    .registers 1

    iget-object p0, p0, Lio/branch/search/n1;->a:Lio/branch/search/p1;

    return-object p0
.end method


# virtual methods
.method public final a(JJ)Lj7/h;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lj7/h<",
            "Lio/branch/search/m4;",
            ">;"
        }
    .end annotation

    new-instance v7, Lio/branch/search/n1$c;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lio/branch/search/n1$c;-><init>(Lio/branch/search/n1;JJLl4/d;)V

    invoke-static {v7}, Lp4/c;->d(Lkotlin/jvm/functions/Function2;)Lj7/h;

    move-result-object p0

    return-object p0
.end method

.method public final a(JJJ)Lj7/h;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)",
            "Lj7/h<",
            "Ljava/util/List<",
            "Lio/branch/search/j4;",
            ">;>;"
        }
    .end annotation

    new-instance v9, Lio/branch/search/n1$b;

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v8}, Lio/branch/search/n1$b;-><init>(Lio/branch/search/n1;JJJLl4/d;)V

    invoke-static {v9}, Lp4/c;->d(Lkotlin/jvm/functions/Function2;)Lj7/h;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x64

    invoke-static {v1, v1}, Li4/q0;->a(II)V

    new-instance v1, Li4/r0;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x64

    move-object p0, v1

    move-object p1, v0

    move p2, v4

    move p3, v4

    move p4, v3

    move p5, v2

    invoke-direct/range {p0 .. p5}, Li4/r0;-><init>(Lj7/h;IIZZ)V

    return-object v1
.end method

.method public final a(Lio/branch/search/o1;Ljava/util/Set;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/o1;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    :goto_5
    invoke-virtual {p1}, Lio/branch/search/o1;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lio/branch/search/o1;->a()Landroid/app/usage/UsageEvents$Event;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_21
    return-object p0
.end method
