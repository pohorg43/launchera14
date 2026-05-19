.class public final Lcom/oplus/seedling/sdk/utils/Constants$Size$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/utils/Constants$Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants$Size$Companion;

.field private static final ALL_VALID_SIZE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOUR_PLUS_FOUR:I = 0x3

.field public static final NOTIFICATION_LG:I = 0x9

.field public static final NOTIFICATION_MD:I = 0x8

.field public static final NOTIFICATION_SM:I = 0x7

.field public static final NOT_DEFINE:I = 0x0

.field public static final N_PLUS_FOUR:I = 0x4

.field public static final ONE_PLUS_TWO:I = 0x5

.field public static final SIZE_DEFAULT:I = 0x3e8

.field private static final SIZE_TO_LITE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIZE_TO_STANDARD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TWO_PLUS_FOUR:I = 0x2

.field public static final TWO_PLUS_TWO:I = 0x1

.field public static final WIDGET_ONE_PLUS_ONE:I = 0x6


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/oplus/seedling/sdk/utils/Constants$Size$Companion;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/utils/Constants$Size$Companion;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/utils/Constants$Size$Companion;->$$INSTANCE:Lcom/oplus/seedling/sdk/utils/Constants$Size$Companion;

    const/4 v0, 0x4

    new-array v1, v0, [Lh4/j;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lh4/j;

    const-string v4, "1*2"

    invoke-direct {v3, v2, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lh4/j;

    const-string v6, "2*2"

    invoke-direct {v5, v4, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lh4/j;

    const-string v7, "2*4"

    invoke-direct {v6, v5, v7}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v1, v4

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lh4/j;

    const-string v8, "4*4"

    invoke-direct {v7, v6, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v1, v5

    invoke-static {v1}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/oplus/seedling/sdk/utils/Constants$Size$Companion;->SIZE_TO_STANDARD:Ljava/util/Map;

    new-array v0, v0, [Lh4/j;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lh4/j;

    const-string v8, "widget_1*1"

    invoke-direct {v7, v6, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v2

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v6, Lh4/j;

    const-string v7, "notification_sm"

    invoke-direct {v6, v2, v7}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v0, v3

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lh4/j;

    const-string v6, "notification_md"

    invoke-direct {v3, v2, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v4

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lh4/j;

    const-string v4, "notification_lg"

    invoke-direct {v3, v2, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v5

    invoke-static {v0}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/utils/Constants$Size$Companion;->SIZE_TO_LITE:Ljava/util/Map;

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "map"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    sput-object v2, Lcom/oplus/seedling/sdk/utils/Constants$Size$Companion;->ALL_VALID_SIZE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getALL_VALID_SIZE_MAP()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/seedling/sdk/utils/Constants$Size$Companion;->ALL_VALID_SIZE_MAP:Ljava/util/Map;

    return-object p0
.end method

.method public final getSIZE_TO_LITE()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/seedling/sdk/utils/Constants$Size$Companion;->SIZE_TO_LITE:Ljava/util/Map;

    return-object p0
.end method

.method public final getSIZE_TO_STANDARD()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/seedling/sdk/utils/Constants$Size$Companion;->SIZE_TO_STANDARD:Ljava/util/Map;

    return-object p0
.end method
