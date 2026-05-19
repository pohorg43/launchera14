.class public final Lio/branch/search/f1$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/branch/search/f1$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/branch/search/f1$a;Ljava/lang/String;Lio/branch/search/t1;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p5, 0x0

    :cond_5
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/branch/search/f1$a;->a(Ljava/lang/String;Lio/branch/search/t1;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "url"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "payload"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "channel"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "sessionId"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lio/branch/search/f1$a$b;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lio/branch/search/f1$a$b;-><init>(Lio/branch/search/t5;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/m;Ljava/lang/String;Ll4/d;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p1, p0, p2, p1}, Lm7/h;->d(Ll4/f;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Lio/branch/search/t1;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;)V
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "url"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "channel"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v0

    sget-object v1, Lm7/y0;->d:Lm7/f0;

    new-instance p0, Lio/branch/search/f1$a$a;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Lio/branch/search/f1$a$a;-><init>(Lio/branch/search/t5;Ljava/lang/String;Lio/branch/search/m;Ljava/lang/String;Lio/branch/search/t1;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/t1;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;)V
    .registers 18
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "url"

    move-object v3, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    move-object v4, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    move-object v2, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    move-object/from16 v6, p6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v0

    sget-object v9, Lm7/y0;->d:Lm7/f0;

    new-instance v10, Lio/branch/search/f1$a$c;

    const/4 v8, 0x0

    move-object v1, v10

    move-object/from16 v5, p5

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Lio/branch/search/f1$a$c;-><init>(Lio/branch/search/t5;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/m;Ljava/lang/String;Lio/branch/search/t1;Ll4/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object p0, v0

    move-object p1, v9

    move p2, v1

    move-object p3, v10

    move p4, v2

    move-object/from16 p5, v3

    invoke-static/range {p0 .. p5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method
