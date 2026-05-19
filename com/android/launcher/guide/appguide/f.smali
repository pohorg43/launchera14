.class public final synthetic Lcom/android/launcher/guide/appguide/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/android/launcher/guide/appguide/f;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/guide/appguide/f;

    invoke-direct {v0}, Lcom/android/launcher/guide/appguide/f;-><init>()V

    sput-object v0, Lcom/android/launcher/guide/appguide/f;->a:Lcom/android/launcher/guide/appguide/f;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;

    check-cast p2, Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;

    invoke-static {p1, p2}, Lcom/android/launcher/guide/appguide/AppGuideManager;->a(Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;Lcom/android/launcher/guide/appguide/AppGuideManager$AppGuideConfig;)I

    move-result p0

    return p0
.end method
