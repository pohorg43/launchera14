.class public final synthetic Lcom/oplus/ext/registry/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/ext/registry/IExtCreatorObjGetter;


# static fields
.field public static final synthetic a:Lcom/oplus/ext/registry/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/ext/registry/b;

    invoke-direct {v0}, Lcom/oplus/ext/registry/b;-><init>()V

    sput-object v0, Lcom/oplus/ext/registry/b;->a:Lcom/oplus/ext/registry/b;

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

    new-instance p0, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAppStateOplusExtImpl;-><init>()V

    return-object p0
.end method
