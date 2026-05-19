.class public final Lcom/oplus/quickstep/common/observers/CompatibleModeObserver;
.super Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/common/observers/CompatibleModeObserver$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCompatibleModeObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompatibleModeObserver.kt\ncom/oplus/quickstep/common/observers/CompatibleModeObserver\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n1855#2,2:50\n*S KotlinDebug\n*F\n+ 1 CompatibleModeObserver.kt\ncom/oplus/quickstep/common/observers/CompatibleModeObserver\n*L\n30#1:50,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/common/observers/CompatibleModeObserver$Companion;

.field private static final TAG:Ljava/lang/String; = "CompatibleModeObserver"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/common/observers/CompatibleModeObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/common/observers/CompatibleModeObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/common/observers/CompatibleModeObserver;->Companion:Lcom/oplus/quickstep/common/observers/CompatibleModeObserver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/exsystemservice/fantasywindow/IFantasyCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFantasyChange(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1  # Ljava/lang/String;
        .annotation runtime Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo$FantasyWindowType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;",
            ">;)V"
        }
    .end annotation

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_89

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_89

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;

    invoke-virtual {p1}, Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/oplus/exsystemservice/fantasywindow/FantasyCallbackInfo;->getMode()I

    move-result p1

    sget-object v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleParaVersionEnable:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->getCompatibleModeValue()I

    move-result v0

    const-string v1, "packageName"

    if-ne p1, v0, :cond_38

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getParallelVersionMode()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    :cond_38
    sget-object v0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleParaVersionDisable:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->getCompatibleModeValue()I

    move-result v0

    if-ne p1, v0, :cond_4f

    sget-object v0, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getParallelVersionMode()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    :cond_4f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {v2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getCompatibleModeMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5f
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompatibleModeObserver < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CompatibleModeObserver"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_89
    return-void
.end method
