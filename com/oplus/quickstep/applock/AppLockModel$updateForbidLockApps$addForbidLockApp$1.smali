.class final Lcom/oplus/quickstep/applock/AppLockModel$updateForbidLockApps$addForbidLockApp$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/applock/AppLockModel;->updateForbidLockApps(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lh4/z;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppLockModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppLockModel.kt\ncom/oplus/quickstep/applock/AppLockModel$updateForbidLockApps$addForbidLockApp$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,666:1\n1#2:667\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/applock/AppLockModel;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/applock/AppLockModel;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/applock/AppLockModel$updateForbidLockApps$addForbidLockApp$1;->this$0:Lcom/oplus/quickstep/applock/AppLockModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel$updateForbidLockApps$addForbidLockApp$1;->invoke(Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel$updateForbidLockApps$addForbidLockApp$1;->this$0:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-static {v0}, Lcom/oplus/quickstep/applock/AppLockModel;->access$getAppLockInfoMap(Lcom/oplus/quickstep/applock/AppLockModel;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/applock/AppLockInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsForbidLock(Z)V

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-nez v0, :cond_33

    iget-object p0, p0, Lcom/oplus/quickstep/applock/AppLockModel$updateForbidLockApps$addForbidLockApp$1;->this$0:Lcom/oplus/quickstep/applock/AppLockModel;

    invoke-static {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->access$getAppLockInfoMap(Lcom/oplus/quickstep/applock/AppLockModel;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lcom/oplus/quickstep/applock/AppLockInfo;

    invoke-direct {v2, p1}, Lcom/oplus/quickstep/applock/AppLockInfo;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->access$isVirtual$p(Lcom/oplus/quickstep/applock/AppLockModel;)Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsVirtualLock(Z)V

    invoke-virtual {v2, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsForbidLock(Z)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    return-void
.end method
