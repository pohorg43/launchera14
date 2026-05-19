.class public final synthetic Lcom/android/launcher3/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/ext/registry/IExtCreatorObjGetter;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/p;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/p;

    invoke-direct {v0}, Lcom/android/launcher3/p;-><init>()V

    sput-object v0, Lcom/android/launcher3/p;->a:Lcom/android/launcher3/p;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/oplus/ext/core/IExtCreator;
    .registers 1

    new-instance p0, Lcom/android/launcher3/DeviceProfileExtTabletImpl;

    invoke-direct {p0}, Lcom/android/launcher3/DeviceProfileExtTabletImpl;-><init>()V

    return-object p0
.end method
