.class public final Lio/branch/search/b3;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lio/branch/search/f2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/f2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/b3$a;

    invoke-direct {v0}, Lio/branch/search/b3$a;-><init>()V

    sput-object v0, Lio/branch/search/b3;->a:Lio/branch/search/f2;

    return-void
.end method

.method public static final a()Lio/branch/search/f2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/branch/search/f2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/branch/search/b3;->a:Lio/branch/search/f2;

    return-object v0
.end method
