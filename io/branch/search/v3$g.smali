.class public Lio/branch/search/v3$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/v3;->a(Lio/branch/search/z3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/z3;

.field public final synthetic b:Lio/branch/search/v3;


# direct methods
.method public constructor <init>(Lio/branch/search/v3;Lio/branch/search/z3;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/v3$g;->b:Lio/branch/search/v3;

    iput-object p2, p0, Lio/branch/search/v3$g;->a:Lio/branch/search/z3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lio/branch/search/v3$g;->b:Lio/branch/search/v3;

    iget-object v0, v0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v0}, Lio/branch/search/u3;->d()Lio/branch/search/a4;

    move-result-object v0

    new-instance v1, Lio/branch/search/z3;

    iget-object p0, p0, Lio/branch/search/v3$g;->a:Lio/branch/search/z3;

    iget v2, p0, Lio/branch/search/z3;->a:I

    iget-wide v3, p0, Lio/branch/search/z3;->b:J

    invoke-direct {v1, v2, v3, v4}, Lio/branch/search/z3;-><init>(IJ)V

    invoke-virtual {v0, v1}, Lio/branch/search/a4;->b(Lio/branch/search/z3;)V
    :try_end_16
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_16} :catch_17
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception p0

    const-string v0, "SQLiteManager"

    const-string v1, "Exception from setLatestTrackingStatus."

    invoke-static {v0, v1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1f
    return-void
.end method
