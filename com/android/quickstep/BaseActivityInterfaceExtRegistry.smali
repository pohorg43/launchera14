.class public final Lcom/android/quickstep/BaseActivityInterfaceExtRegistry;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/BaseActivityInterfaceExtRegistry;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/BaseActivityInterfaceExtRegistry;

    invoke-direct {v0}, Lcom/android/quickstep/BaseActivityInterfaceExtRegistry;-><init>()V

    sput-object v0, Lcom/android/quickstep/BaseActivityInterfaceExtRegistry;->INSTANCE:Lcom/android/quickstep/BaseActivityInterfaceExtRegistry;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final registerExt()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/android/quickstep/IBaseActivityInterfaceExt;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_e

    const-class v1, Lcom/android/quickstep/BaseActivityInterfaceExtTabletImpl;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerExt(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_21

    :cond_e
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-class v1, Lcom/android/quickstep/BaseActivityInterfaceExtFoldScreenImpl;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerExt(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_21

    :cond_1c
    const-class v1, Lcom/android/quickstep/BaseActivityInterfaceExtOplusImpl;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerExt(Ljava/lang/Class;Ljava/lang/Class;)V

    :goto_21
    return-void
.end method

.method public static final registerObj()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/android/quickstep/IBaseActivityInterfaceExt;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/android/quickstep/c0;->a:Lcom/android/quickstep/c0;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    goto :goto_21

    :cond_e
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/android/quickstep/b0;->a:Lcom/android/quickstep/b0;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    goto :goto_21

    :cond_1c
    sget-object v1, Lcom/android/launcher3/statemanager/a;->c:Lcom/android/launcher3/statemanager/a;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    :goto_21
    return-void
.end method
