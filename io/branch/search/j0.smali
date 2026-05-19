.class public final Lio/branch/search/j0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public volatile a:Z

.field public volatile b:Z

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key_live_ggTU2P6alzt9Vv5xEyFONhhkrzos69iU"

    iput-object v0, p0, Lio/branch/search/j0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "branchKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/j0;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lio/branch/search/j0;->b:Z

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lio/branch/search/j0;->a:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lio/branch/search/j0;->b:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method
