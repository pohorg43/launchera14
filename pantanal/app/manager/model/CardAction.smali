.class public final Lpantanal/app/manager/model/CardAction;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/manager/model/CardAction$Companion;,
        Lpantanal/app/manager/model/CardAction$ACTION;
    }
.end annotation


# static fields
.field private static final ACTION_CREATE:Lpantanal/app/manager/model/CardAction;

.field private static final ACTION_CREATE_FORCE_UPDATE:Lpantanal/app/manager/model/CardAction;

.field private static final ACTION_DESTROY:Lpantanal/app/manager/model/CardAction;

.field public static final ACTION_EXTRA_KEY:Ljava/lang/String; = "extra_key"

.field private static final ACTION_HIDE:Lpantanal/app/manager/model/CardAction;

.field private static final ACTION_HOST_CHANGE:Lpantanal/app/manager/model/CardAction;

.field private static final ACTION_PAUSE:Lpantanal/app/manager/model/CardAction;

.field private static final ACTION_RENDER_FAIL:Lpantanal/app/manager/model/CardAction;

.field private static final ACTION_RESUME:Lpantanal/app/manager/model/CardAction;

.field private static final ACTION_RESUME_FORCE_UPDATE:Lpantanal/app/manager/model/CardAction;

.field private static final ACTION_SHOW:Lpantanal/app/manager/model/CardAction;

.field private static final ACTION_SIZE_CHANGE:Lpantanal/app/manager/model/CardAction;

.field private static final ACTION_SUBSCRIBED:Lpantanal/app/manager/model/CardAction;

.field private static final ACTION_UNSUBSCRIBED:Lpantanal/app/manager/model/CardAction;

.field private static final ACTION_UPDATE_DATA:Lpantanal/app/manager/model/CardAction;

.field public static final CONFIGURATION_LIST_KEY:Ljava/lang/String; = "configuration_list_key"

.field public static final CONFIGURATION_OBSERVER_ID:Ljava/lang/String; = "configuration_observer_id"

.field public static final Companion:Lpantanal/app/manager/model/CardAction$Companion;

.field public static final EXTRA_FORCE_UPDATE:Ljava/lang/String; = "force_update"

.field public static final LIFE_CIRCLE_KEY:Ljava/lang/String; = "life_circle"

.field public static final LIFE_CIRCLE_VALUE_CREATE:Ljava/lang/String; = "create"

.field public static final LIFE_CIRCLE_VALUE_DESTROY:Ljava/lang/String; = "destroy"

.field public static final LIFE_CIRCLE_VALUE_HIDE:Ljava/lang/String; = "hide"

.field public static final LIFE_CIRCLE_VALUE_HOST_CHANGE:Ljava/lang/String; = "host_change"

.field public static final LIFE_CIRCLE_VALUE_PAUSE:Ljava/lang/String; = "pause"

.field public static final LIFE_CIRCLE_VALUE_RENDER_FAIL:Ljava/lang/String; = "render_fail"

.field public static final LIFE_CIRCLE_VALUE_RESUME:Ljava/lang/String; = "resume"

.field public static final LIFE_CIRCLE_VALUE_SHOW:Ljava/lang/String; = "show"

.field public static final LIFE_CIRCLE_VALUE_SIZE_CHANGE:Ljava/lang/String; = "size_change"

.field public static final LIFE_CIRCLE_VALUE_SUBSCRIBED:Ljava/lang/String; = "subscribed"

.field public static final LIFE_CIRCLE_VALUE_UNSUBSCRIBED:Ljava/lang/String; = "unsubscribed"

.field public static final LIFE_CIRCLE_VALUE_UPDATE_DATA:Ljava/lang/String; = "update_data"

.field public static final PUBLISH_CONFIGURATION_LIST:Ljava/lang/String; = "publish_configuration_list"


# instance fields
.field private final action:I

.field private final param:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldForceFetch:Z

.field private final shouldNotify:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 22

    new-instance v0, Lpantanal/app/manager/model/CardAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/manager/model/CardAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/manager/model/CardAction;->Companion:Lpantanal/app/manager/model/CardAction$Companion;

    new-instance v0, Lpantanal/app/manager/model/CardAction;

    const/4 v1, 0x2

    new-array v2, v1, [Lh4/j;

    new-instance v3, Lh4/j;

    const-string v9, "life_circle"

    const-string v10, "create"

    invoke-direct {v3, v9, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x0

    aput-object v3, v2, v11

    new-instance v3, Lh4/j;

    const-string v12, "extra_key"

    const-string v13, "force_update"

    invoke-direct {v3, v12, v13}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v14, 0x1

    aput-object v3, v2, v14

    invoke-static {v2}, Li4/k0;->i([Lh4/j;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v3, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lpantanal/app/manager/model/CardAction;-><init>(ILjava/util/Map;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_CREATE_FORCE_UPDATE:Lpantanal/app/manager/model/CardAction;

    new-instance v0, Lpantanal/app/manager/model/CardAction;

    new-array v2, v14, [Lh4/j;

    new-instance v3, Lh4/j;

    invoke-direct {v3, v9, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v11

    invoke-static {v2}, Li4/k0;->i([Lh4/j;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2, v11, v11}, Lpantanal/app/manager/model/CardAction;-><init>(ILjava/util/Map;ZZ)V

    sput-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_CREATE:Lpantanal/app/manager/model/CardAction;

    new-instance v0, Lpantanal/app/manager/model/CardAction;

    const/16 v16, 0x2

    new-array v2, v14, [Lh4/j;

    new-instance v3, Lh4/j;

    const-string v4, "destroy"

    invoke-direct {v3, v9, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v11

    invoke-static {v2}, Li4/k0;->i([Lh4/j;)Ljava/util/Map;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xc

    const/16 v21, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lpantanal/app/manager/model/CardAction;-><init>(ILjava/util/Map;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_DESTROY:Lpantanal/app/manager/model/CardAction;

    new-instance v0, Lpantanal/app/manager/model/CardAction;

    const/4 v3, 0x2

    new-array v2, v14, [Lh4/j;

    new-instance v4, Lh4/j;

    const-string v10, "resume"

    invoke-direct {v4, v9, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v11

    invoke-static {v2}, Li4/k0;->i([Lh4/j;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lpantanal/app/manager/model/CardAction;-><init>(ILjava/util/Map;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_RESUME:Lpantanal/app/manager/model/CardAction;

    new-instance v0, Lpantanal/app/manager/model/CardAction;

    const/16 v16, 0x2

    new-array v2, v1, [Lh4/j;

    new-instance v3, Lh4/j;

    invoke-direct {v3, v9, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v11

    new-instance v3, Lh4/j;

    invoke-direct {v3, v12, v13}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v14

    invoke-static {v2}, Li4/k0;->i([Lh4/j;)Ljava/util/Map;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xc

    const/16 v21, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lpantanal/app/manager/model/CardAction;-><init>(ILjava/util/Map;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_RESUME_FORCE_UPDATE:Lpantanal/app/manager/model/CardAction;

    new-instance v0, Lpantanal/app/manager/model/CardAction;

    const/4 v3, 0x2

    new-array v2, v14, [Lh4/j;

    new-instance v4, Lh4/j;

    const-string v5, "pause"

    invoke-direct {v4, v9, v5}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v11

    invoke-static {v2}, Li4/k0;->i([Lh4/j;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lpantanal/app/manager/model/CardAction;-><init>(ILjava/util/Map;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_PAUSE:Lpantanal/app/manager/model/CardAction;

    new-instance v0, Lpantanal/app/manager/model/CardAction;

    new-array v2, v14, [Lh4/j;

    new-instance v3, Lh4/j;

    const-string v4, "subscribed"

    invoke-direct {v3, v9, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v11

    invoke-static {v2}, Li4/k0;->i([Lh4/j;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2, v11, v11}, Lpantanal/app/manager/model/CardAction;-><init>(ILjava/util/Map;ZZ)V

    sput-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_SUBSCRIBED:Lpantanal/app/manager/model/CardAction;

    new-instance v0, Lpantanal/app/manager/model/CardAction;

    const/16 v16, 0x2

    new-array v1, v14, [Lh4/j;

    new-instance v2, Lh4/j;

    const-string v3, "unsubscribed"

    invoke-direct {v2, v9, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v11

    invoke-static {v1}, Li4/k0;->i([Lh4/j;)Ljava/util/Map;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xc

    const/16 v21, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lpantanal/app/manager/model/CardAction;-><init>(ILjava/util/Map;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_UNSUBSCRIBED:Lpantanal/app/manager/model/CardAction;

    new-instance v0, Lpantanal/app/manager/model/CardAction;

    const/4 v2, 0x2

    new-array v1, v14, [Lh4/j;

    new-instance v3, Lh4/j;

    const-string v4, "show"

    invoke-direct {v3, v9, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v11

    invoke-static {v1}, Li4/k0;->i([Lh4/j;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lpantanal/app/manager/model/CardAction;-><init>(ILjava/util/Map;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_SHOW:Lpantanal/app/manager/model/CardAction;

    new-instance v0, Lpantanal/app/manager/model/CardAction;

    const/16 v16, 0x2

    new-array v1, v14, [Lh4/j;

    new-instance v2, Lh4/j;

    const-string v3, "hide"

    invoke-direct {v2, v9, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v11

    invoke-static {v1}, Li4/k0;->i([Lh4/j;)Ljava/util/Map;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xc

    const/16 v21, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lpantanal/app/manager/model/CardAction;-><init>(ILjava/util/Map;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_HIDE:Lpantanal/app/manager/model/CardAction;

    new-instance v0, Lpantanal/app/manager/model/CardAction;

    const/4 v2, 0x2

    new-array v1, v14, [Lh4/j;

    new-instance v3, Lh4/j;

    const-string v4, "render_fail"

    invoke-direct {v3, v9, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v11

    invoke-static {v1}, Li4/k0;->i([Lh4/j;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lpantanal/app/manager/model/CardAction;-><init>(ILjava/util/Map;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_RENDER_FAIL:Lpantanal/app/manager/model/CardAction;

    new-instance v0, Lpantanal/app/manager/model/CardAction;

    const/16 v16, 0x2

    new-array v1, v14, [Lh4/j;

    new-instance v2, Lh4/j;

    const-string v3, "update_data"

    invoke-direct {v2, v9, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v11

    invoke-static {v1}, Li4/k0;->i([Lh4/j;)Ljava/util/Map;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xc

    const/16 v21, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lpantanal/app/manager/model/CardAction;-><init>(ILjava/util/Map;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_UPDATE_DATA:Lpantanal/app/manager/model/CardAction;

    new-instance v0, Lpantanal/app/manager/model/CardAction;

    const/4 v2, 0x2

    new-array v1, v14, [Lh4/j;

    new-instance v3, Lh4/j;

    const-string v4, "host_change"

    invoke-direct {v3, v9, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v11

    invoke-static {v1}, Li4/k0;->i([Lh4/j;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lpantanal/app/manager/model/CardAction;-><init>(ILjava/util/Map;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_HOST_CHANGE:Lpantanal/app/manager/model/CardAction;

    new-instance v0, Lpantanal/app/manager/model/CardAction;

    const/16 v16, 0x2

    new-array v1, v14, [Lh4/j;

    new-instance v2, Lh4/j;

    const-string v3, "size_change"

    invoke-direct {v2, v9, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v11

    invoke-static {v1}, Li4/k0;->i([Lh4/j;)Ljava/util/Map;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xc

    const/16 v21, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lpantanal/app/manager/model/CardAction;-><init>(ILjava/util/Map;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_SIZE_CHANGE:Lpantanal/app/manager/model/CardAction;

    return-void
.end method

.method public constructor <init>(ILjava/util/Map;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpantanal/app/manager/model/CardAction;->action:I

    iput-object p2, p0, Lpantanal/app/manager/model/CardAction;->param:Ljava/util/Map;

    iput-boolean p3, p0, Lpantanal/app/manager/model/CardAction;->shouldForceFetch:Z

    iput-boolean p4, p0, Lpantanal/app/manager/model/CardAction;->shouldNotify:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/Map;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x1

    if-eqz p6, :cond_6

    move p3, v0

    :cond_6
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    move p4, v0

    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Lpantanal/app/manager/model/CardAction;-><init>(ILjava/util/Map;ZZ)V

    return-void
.end method

.method public static final synthetic access$getACTION_CREATE$cp()Lpantanal/app/manager/model/CardAction;
    .registers 1

    sget-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_CREATE:Lpantanal/app/manager/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_CREATE_FORCE_UPDATE$cp()Lpantanal/app/manager/model/CardAction;
    .registers 1

    sget-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_CREATE_FORCE_UPDATE:Lpantanal/app/manager/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_DESTROY$cp()Lpantanal/app/manager/model/CardAction;
    .registers 1

    sget-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_DESTROY:Lpantanal/app/manager/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_HIDE$cp()Lpantanal/app/manager/model/CardAction;
    .registers 1

    sget-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_HIDE:Lpantanal/app/manager/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_HOST_CHANGE$cp()Lpantanal/app/manager/model/CardAction;
    .registers 1

    sget-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_HOST_CHANGE:Lpantanal/app/manager/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_PAUSE$cp()Lpantanal/app/manager/model/CardAction;
    .registers 1

    sget-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_PAUSE:Lpantanal/app/manager/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_RENDER_FAIL$cp()Lpantanal/app/manager/model/CardAction;
    .registers 1

    sget-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_RENDER_FAIL:Lpantanal/app/manager/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_RESUME$cp()Lpantanal/app/manager/model/CardAction;
    .registers 1

    sget-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_RESUME:Lpantanal/app/manager/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_RESUME_FORCE_UPDATE$cp()Lpantanal/app/manager/model/CardAction;
    .registers 1

    sget-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_RESUME_FORCE_UPDATE:Lpantanal/app/manager/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_SHOW$cp()Lpantanal/app/manager/model/CardAction;
    .registers 1

    sget-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_SHOW:Lpantanal/app/manager/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_SIZE_CHANGE$cp()Lpantanal/app/manager/model/CardAction;
    .registers 1

    sget-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_SIZE_CHANGE:Lpantanal/app/manager/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_SUBSCRIBED$cp()Lpantanal/app/manager/model/CardAction;
    .registers 1

    sget-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_SUBSCRIBED:Lpantanal/app/manager/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_UNSUBSCRIBED$cp()Lpantanal/app/manager/model/CardAction;
    .registers 1

    sget-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_UNSUBSCRIBED:Lpantanal/app/manager/model/CardAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_UPDATE_DATA$cp()Lpantanal/app/manager/model/CardAction;
    .registers 1

    sget-object v0, Lpantanal/app/manager/model/CardAction;->ACTION_UPDATE_DATA:Lpantanal/app/manager/model/CardAction;

    return-object v0
.end method

.method public static synthetic copy$default(Lpantanal/app/manager/model/CardAction;ILjava/util/Map;ZZILjava/lang/Object;)Lpantanal/app/manager/model/CardAction;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lpantanal/app/manager/model/CardAction;->action:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lpantanal/app/manager/model/CardAction;->param:Ljava/util/Map;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-boolean p3, p0, Lpantanal/app/manager/model/CardAction;->shouldForceFetch:Z

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-boolean p4, p0, Lpantanal/app/manager/model/CardAction;->shouldNotify:Z

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lpantanal/app/manager/model/CardAction;->copy(ILjava/util/Map;ZZ)Lpantanal/app/manager/model/CardAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lpantanal/app/manager/model/CardAction;->action:I

    return p0
.end method

.method public final component2()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/manager/model/CardAction;->param:Ljava/util/Map;

    return-object p0
.end method

.method public final component3()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/manager/model/CardAction;->shouldForceFetch:Z

    return p0
.end method

.method public final component4()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/manager/model/CardAction;->shouldNotify:Z

    return p0
.end method

.method public final copy(ILjava/util/Map;ZZ)Lpantanal/app/manager/model/CardAction;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lpantanal/app/manager/model/CardAction;"
        }
    .end annotation

    new-instance p0, Lpantanal/app/manager/model/CardAction;

    invoke-direct {p0, p1, p2, p3, p4}, Lpantanal/app/manager/model/CardAction;-><init>(ILjava/util/Map;ZZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/manager/model/CardAction;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/manager/model/CardAction;

    iget v1, p0, Lpantanal/app/manager/model/CardAction;->action:I

    iget v3, p1, Lpantanal/app/manager/model/CardAction;->action:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lpantanal/app/manager/model/CardAction;->param:Ljava/util/Map;

    iget-object v3, p1, Lpantanal/app/manager/model/CardAction;->param:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-boolean v1, p0, Lpantanal/app/manager/model/CardAction;->shouldForceFetch:Z

    iget-boolean v3, p1, Lpantanal/app/manager/model/CardAction;->shouldForceFetch:Z

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-boolean p0, p0, Lpantanal/app/manager/model/CardAction;->shouldNotify:Z

    iget-boolean p1, p1, Lpantanal/app/manager/model/CardAction;->shouldNotify:Z

    if-eq p0, p1, :cond_2c

    return v2

    :cond_2c
    return v0
.end method

.method public final getAction()I
    .registers 1

    iget p0, p0, Lpantanal/app/manager/model/CardAction;->action:I

    return p0
.end method

.method public final getParam()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/manager/model/CardAction;->param:Ljava/util/Map;

    return-object p0
.end method

.method public final getShouldForceFetch()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/manager/model/CardAction;->shouldForceFetch:Z

    return p0
.end method

.method public final getShouldNotify()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/manager/model/CardAction;->shouldNotify:Z

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lpantanal/app/manager/model/CardAction;->action:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/manager/model/CardAction;->param:Ljava/util/Map;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lpantanal/app/manager/model/CardAction;->shouldForceFetch:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    move v1, v2

    :cond_1b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lpantanal/app/manager/model/CardAction;->shouldNotify:Z

    if-eqz p0, :cond_23

    goto :goto_24

    :cond_23
    move v2, p0

    :goto_24
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lpantanal/app/manager/model/CardAction;->action:I

    iget-object v1, p0, Lpantanal/app/manager/model/CardAction;->param:Ljava/util/Map;

    iget-boolean v2, p0, Lpantanal/app/manager/model/CardAction;->shouldForceFetch:Z

    iget-boolean p0, p0, Lpantanal/app/manager/model/CardAction;->shouldNotify:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CardAction(action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", param="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", shouldForceFetch="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", shouldNotify="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
