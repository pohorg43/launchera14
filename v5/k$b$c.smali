.class public final Lv5/k$b$c;
.super Lv5/k$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv5/k$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lv5/k$b$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv5/k$b$c;

    invoke-direct {v0}, Lv5/k$b$c;-><init>()V

    sput-object v0, Lv5/k$b$c;->a:Lv5/k$b$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lv5/k$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
