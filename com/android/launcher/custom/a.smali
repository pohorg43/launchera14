.class public final synthetic Lcom/android/launcher/custom/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;


# static fields
.field public static final synthetic a:Lcom/android/launcher/custom/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/custom/a;

    invoke-direct {v0}, Lcom/android/launcher/custom/a;-><init>()V

    sput-object v0, Lcom/android/launcher/custom/a;->a:Lcom/android/launcher/custom/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final packageDeleted(Ljava/lang/String;I)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/launcher/custom/PictorialUtils;->b(Ljava/lang/String;I)V

    return-void
.end method
