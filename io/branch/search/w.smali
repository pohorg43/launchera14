.class public final Lio/branch/search/w;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/w$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/w$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/w$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/w$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/w;->Companion:Lio/branch/search/w$a;

    return-void
.end method

.method public static final a(Landroid/content/Context;Lio/branch/search/m;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/branch/search/w;->Companion:Lio/branch/search/w$a;

    invoke-virtual {v0, p0, p1}, Lio/branch/search/w$a;->a(Landroid/content/Context;Lio/branch/search/m;)V

    return-void
.end method
