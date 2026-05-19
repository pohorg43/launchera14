.class public Lz0/i$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lw0/c;

.field public b:Lw0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw0/f<",
            "TZ;>;"
        }
    .end annotation
.end field

.field public c:Lz0/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/v<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
