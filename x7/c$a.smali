.class public final Lx7/c$a;
.super Lx7/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lx7/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lx7/c$a;

    invoke-direct {v0}, Lx7/c$a;-><init>()V

    sput-object v0, Lx7/c$a;->a:Lx7/c$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lx7/c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
