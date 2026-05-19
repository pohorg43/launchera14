.class public final Lcom/oplus/card/manager/domain/CardManager$initCardGroupSDK$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/groupcard/GroupCardPluginInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/manager/domain/CardManager;->initCardGroupSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .registers 4

    const-string p0, "s"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CardGroupSdk init onFailed i:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",s:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CardManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/card/pantanal/application/PantanalCardService;->Companion:Lcom/oplus/card/pantanal/application/PantanalCardService$Companion;

    sget p1, Lcom/oplus/card/pantanal/application/PantanalCardService;->GROUPCARD_PLUGIN_FAIL:I

    invoke-virtual {p0, p1}, Lcom/oplus/card/pantanal/application/PantanalCardService$Companion;->setGroupCardStatus(I)V

    invoke-virtual {p0}, Lcom/oplus/card/pantanal/application/PantanalCardService$Companion;->getDelayJob()Lm7/s1;

    move-result-object p0

    if-eqz p0, :cond_3d

    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string p2, "CardGroupSdk init onFailed"

    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lm7/s1;->a(Ljava/util/concurrent/CancellationException;)V

    invoke-interface {p0}, Lm7/s1;->start()Z

    :cond_3d
    return-void
.end method

.method public onSuccess()V
    .registers 3

    const-string p0, "CardManager"

    const-string v0, "CardGroupSdk init onSuccess"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/card/pantanal/application/PantanalCardService;->Companion:Lcom/oplus/card/pantanal/application/PantanalCardService$Companion;

    sget v1, Lcom/oplus/card/pantanal/application/PantanalCardService;->GROUPCARD_PLUGIN_SUCCESS:I

    invoke-virtual {p0, v1}, Lcom/oplus/card/pantanal/application/PantanalCardService$Companion;->setGroupCardStatus(I)V

    invoke-virtual {p0}, Lcom/oplus/card/pantanal/application/PantanalCardService$Companion;->getDelayJob()Lm7/s1;

    move-result-object p0

    if-eqz p0, :cond_1f

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lm7/s1;->a(Ljava/util/concurrent/CancellationException;)V

    invoke-interface {p0}, Lm7/s1;->start()Z

    :cond_1f
    return-void
.end method
