.class public final synthetic Lj0/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lj0/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lj0/c;

    invoke-direct {v0}, Lj0/c;-><init>()V

    sput-object v0, Lj0/c;->a:Lj0/c;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/android/launcher3/model/data/ItemInfo;->a(Landroid/content/ComponentName;)Lcom/android/launcher3/logger/LauncherAtom$Application$Builder;

    move-result-object p0

    return-object p0
.end method
