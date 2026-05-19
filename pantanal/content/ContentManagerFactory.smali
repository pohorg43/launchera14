.class public final Lpantanal/content/ContentManagerFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lpantanal/content/ContentManagerFactory;

.field private static final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lpantanal/app/bean/Entrance;",
            "Lpantanal/content/ContentManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/content/ContentManagerFactory;

    invoke-direct {v0}, Lpantanal/content/ContentManagerFactory;-><init>()V

    sput-object v0, Lpantanal/content/ContentManagerFactory;->INSTANCE:Lpantanal/content/ContentManagerFactory;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lpantanal/content/ContentManagerFactory;->map:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createManager(Lw8/a;Lpantanal/app/bean/Entrance;)Lpantanal/content/ContentManager;
    .registers 3

    new-instance p0, Lpantanal/content/ContentManagerImpl;

    invoke-direct {p0, p1, p2}, Lpantanal/content/ContentManagerImpl;-><init>(Lw8/a;Lpantanal/app/bean/Entrance;)V

    return-object p0
.end method


# virtual methods
.method public final getContentManager(Lw8/a;Lpantanal/app/bean/Entrance;)Lpantanal/content/ContentManager;
    .registers 5

    const-string v0, "contextProxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entrance"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lpantanal/app/bean/Entrance;->UNKNOWN:Lpantanal/app/bean/Entrance;

    if-eq p2, v0, :cond_2d

    sget-object v0, Lpantanal/content/ContentManagerFactory;->map:Ljava/util/HashMap;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p1, "{\n            map[entrance]!!\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lpantanal/content/ContentManager;

    goto :goto_2c

    :cond_25
    invoke-direct {p0, p1, p2}, Lpantanal/content/ContentManagerFactory;->createManager(Lw8/a;Lpantanal/app/bean/Entrance;)Lpantanal/content/ContentManager;

    move-result-object p0

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2c
    return-object p0

    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal Entrance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
