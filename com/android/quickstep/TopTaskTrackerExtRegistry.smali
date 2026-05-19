.class public final Lcom/android/quickstep/TopTaskTrackerExtRegistry;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/TopTaskTrackerExtRegistry;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/TopTaskTrackerExtRegistry;

    invoke-direct {v0}, Lcom/android/quickstep/TopTaskTrackerExtRegistry;-><init>()V

    sput-object v0, Lcom/android/quickstep/TopTaskTrackerExtRegistry;->INSTANCE:Lcom/android/quickstep/TopTaskTrackerExtRegistry;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final registerObj()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/android/quickstep/ITopTaskTrackerExt;

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v1, Lcom/android/quickstep/o2;->a:Lcom/android/quickstep/o2;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    goto :goto_21

    :cond_10
    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/android/quickstep/n2;->a:Lcom/android/quickstep/n2;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    goto :goto_21

    :cond_1c
    sget-object v1, Lcom/android/quickstep/p2;->a:Lcom/android/quickstep/p2;

    invoke-static {v0, v1}, Lcom/oplus/ext/registry/ExtRegistry;->registerObj(Ljava/lang/Class;Lcom/oplus/ext/registry/IExtCreatorObjGetter;)V

    :goto_21
    return-void
.end method
