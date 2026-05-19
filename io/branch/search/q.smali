.class public final Lio/branch/search/q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/q$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/q$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/q$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/q;->Companion:Lio/branch/search/q$a;

    return-void
.end method

.method public static final a(Lio/branch/search/m;Lorg/json/JSONObject;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/branch/search/q;->Companion:Lio/branch/search/q$a;

    invoke-virtual {v0, p0, p1}, Lio/branch/search/q$a;->a(Lio/branch/search/m;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static final a(Lorg/json/JSONObject;Lio/branch/search/BranchAnalytics$d;Lio/branch/search/m;Lio/branch/search/e5;Lio/branch/search/h0;)V
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/branch/search/q;->Companion:Lio/branch/search/q$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/branch/search/q$a;->a(Lorg/json/JSONObject;Lio/branch/search/BranchAnalytics$d;Lio/branch/search/m;Lio/branch/search/e5;Lio/branch/search/h0;)V

    return-void
.end method

.method public static final a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/branch/search/q;->Companion:Lio/branch/search/q$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lio/branch/search/q$a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
