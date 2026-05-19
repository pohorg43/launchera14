.class public final Lcom/android/launcher3/anim/light/animparams/FolderAnimParamsFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/anim/light/animparams/FolderAnimParamsFactory;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/anim/light/animparams/FolderAnimParamsFactory;

    invoke-direct {v0}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParamsFactory;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/light/animparams/FolderAnimParamsFactory;->INSTANCE:Lcom/android/launcher3/anim/light/animparams/FolderAnimParamsFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getFolderAnimParams(ZZZ)Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_8

    new-instance p0, Lcom/android/launcher3/anim/light/animparams/SuperLightFolderAnimParams;

    invoke-direct {p0, p2}, Lcom/android/launcher3/anim/light/animparams/SuperLightFolderAnimParams;-><init>(Z)V

    goto :goto_15

    :cond_8
    if-eqz p1, :cond_10

    new-instance p0, Lcom/android/launcher3/anim/light/animparams/LightBigFolderAnimParams;

    invoke-direct {p0, p2}, Lcom/android/launcher3/anim/light/animparams/LightBigFolderAnimParams;-><init>(Z)V

    goto :goto_15

    :cond_10
    new-instance p0, Lcom/android/launcher3/anim/light/animparams/LightFolderAnimParams;

    invoke-direct {p0, p2}, Lcom/android/launcher3/anim/light/animparams/LightFolderAnimParams;-><init>(Z)V

    :goto_15
    return-object p0
.end method
