.class public final Lio/branch/search/x0$c;
.super Ln4/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/x0;->a(Lp1/c;JJLl4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ln4/e;
    c = "io.branch.search.internal.image.DrawableHelpersKt"
    f = "DrawableHelpers.kt"
    l = {
        0x2e
    }
    m = "wrap"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I


# direct methods
.method public constructor <init>(Ll4/d;)V
    .registers 2

    invoke-direct {p0, p1}, Ln4/c;-><init>(Ll4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iput-object p1, p0, Lio/branch/search/x0$c;->a:Ljava/lang/Object;

    iget p1, p0, Lio/branch/search/x0$c;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/branch/search/x0$c;->b:I

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lio/branch/search/x0;->a(Lp1/c;JJLl4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
