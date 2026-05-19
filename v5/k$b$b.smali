.class public final Lv5/k$b$b;
.super Lv5/k$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv5/k$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lv5/k$b$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv5/k$b$b;

    invoke-direct {v0}, Lv5/k$b$b;-><init>()V

    sput-object v0, Lv5/k$b$b;->a:Lv5/k$b$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lv5/k$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
